
package Paws::Lambda::InvokeAsyncResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has Status => (is => 'ro', isa => 'Int');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvokeAsyncResponse

=head1 ATTRIBUTES

=head2 Status => Int

  


=cut

