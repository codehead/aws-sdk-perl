
package Paws::ServiceCatalog::UpdateProductOutput;
  use Moose;
  has ProductViewDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProductViewDetail');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProductOutput

=head1 ATTRIBUTES


=head2 ProductViewDetail => L<Paws::ServiceCatalog::ProductViewDetail>

The resulting detailed product view information.


=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Tags associated with the product.


=head2 _request_id => Str


=cut

1;