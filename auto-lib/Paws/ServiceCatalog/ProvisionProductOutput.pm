
package Paws::ServiceCatalog::ProvisionProductOutput;
  use Moose;
  has RecordDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::RecordDetail');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisionProductOutput

=head1 ATTRIBUTES


=head2 RecordDetail => L<Paws::ServiceCatalog::RecordDetail>

The detailed result of the ProvisionProduct request, containing the
inputs made to that request, the current state of the request, a
pointer to the ProvisionedProduct object of the request, and a list of
any errors that the request encountered.


=head2 _request_id => Str


=cut

1;