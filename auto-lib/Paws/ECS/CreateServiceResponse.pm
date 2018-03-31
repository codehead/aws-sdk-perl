
package Paws::ECS::CreateServiceResponse;
  use Moose;
  has Service => (is => 'ro', isa => 'Paws::ECS::Service', traits => ['NameInRequest'], request_name => 'service' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECS::CreateServiceResponse

=head1 ATTRIBUTES


=head2 Service => L<Paws::ECS::Service>

The full description of your service following the create call.


=head2 _request_id => Str


=cut

1;