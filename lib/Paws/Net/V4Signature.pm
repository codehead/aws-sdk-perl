package Paws::Net::V4Signature;
  use Moose::Role;
  use Net::Amazon::Signature::V4;
  #requires 'region';
  requires 'service';
  use POSIX qw(strftime);

  sub BUILD {
    my $self = shift;

    # These calls are here so that when you construct
    # the object the endpoint information and the _region_for_signature
    # are calculated during construction. This is to avoid the fact that 
    # these attributes are lazy (because they depend on other attributes) 
    # and they don't get used until the first method is called, so if
    # they are incorrect, they don't throw until the first method is called.
    # It's much better to have them throw when $paws->service('...') is called
    # as this is the point where the user had specified "incorrect" information,
    # instead of the problem happening in the first method call.
    $self->endpoint;
    $self->_region_for_signature;
  }

  sub sign {
    my ($self, $request) = @_;

    $request->header( Date => $request->header('X-Amz-Date') // strftime( '%Y%m%dT%H%M%SZ', gmtime ) );
    $request->header( Host => $self->endpoint_host );
    if ($self->session_token) {
      $request->header( 'X-Amz-Security-Token' => $self->session_token );
    }

    my $sig = Net::Amazon::Signature::V4->new( $self->access_key, $self->secret_key, $self->_region_for_signature, $self->service );
    $sig->sign( $request );
  }
1;
