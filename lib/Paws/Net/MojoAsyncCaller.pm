package Paws::Net::MojoAsyncCaller;
  use Moose;
  with 'Paws::Net::CallerRole';

  use Paws::API::Retry;
  use Future;
  use Future::Mojo;
  use Mojo::UserAgent;

  has ua => (is => 'ro', isa => 'Mojo::UserAgent', default => sub {
    Mojo::UserAgent->new->connect_timeout(15)->inactivity_timeout(60);
  });

  sub caller_to_response {}

  sub do_call {
    my ($self, $service, $call_object, $tracker) = @_;

    $tracker = Paws::API::Retry->new(
      %{ $service->retry }, 
      max_tries => $service->max_attempts,
      retry_rules => $service->retriables,
    ) if (not defined $tracker);

    $tracker->one_more_try;
    my $f = $self->send_request($service, $call_object);
    $f->on_fail(sub {
      my $fail = shift;
      $tracker->operation_result($fail);

      if ($tracker->should_retry) {
        #my $sleep = Future::Mojo->new_timer(int($tracker->sleep_time));
        #$sleep->on_done(sub {
          return $self->do_call($service, $call_object, $tracker);
        #});
        #return $sleep;
      } else {
        Future->fail($fail);
      }
    });
    return $f;
  }

  sub send_request {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    my $method = lc($requestObj->method);
    my $response_class = $call_object->_returns;

    my $future = Future::Mojo->new;
    $self->ua->$method(
      $requestObj->url =>  
      $headers => 
      ($requestObj->content)?$requestObj->content:() =>
      sub {
        my ( $ua, $response ) = @_;
        if (my $err = $response->error and not defined $response->error->{ code }){
          $future->fail(Paws::Exception->new(message => $err->{ message }, code => 'ConnectionError', request_id => ''));
        } else {
          my $res = $service->handle_response($call_object, $response->res->code, $response->res->body, $response->res->headers->to_hash);

          if (not ref($res)){
            $future->done($res);
          } elsif ($res->isa('Paws::Exception')) {
            $future->fail($res);
          } else {
            $future->done($res);
          }
        }
        return $future;
      } 
    );
    return $future;   
  }
1;
