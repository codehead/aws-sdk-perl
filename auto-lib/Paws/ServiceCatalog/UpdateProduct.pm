
package Paws::ServiceCatalog::UpdateProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AddTags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');
  has Description => (is => 'ro', isa => 'Str');
  has Distributor => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Owner => (is => 'ro', isa => 'Str');
  has RemoveTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SupportDescription => (is => 'ro', isa => 'Str');
  has SupportEmail => (is => 'ro', isa => 'Str');
  has SupportUrl => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdateProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProduct - Arguments for method UpdateProduct on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProduct on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method UpdateProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProduct.

As an example:

  $service_obj->UpdateProduct(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Tags to add to the existing list of tags associated with the product.



=head2 Description => Str

The updated text description of the product.



=head2 Distributor => Str

The updated distributor of the product.



=head2 B<REQUIRED> Id => Str

The identifier of the product for the update request.



=head2 Name => Str

The updated product name.



=head2 Owner => Str

The updated owner of the product.



=head2 RemoveTags => ArrayRef[Str|Undef]

Tags to remove from the existing list of tags associated with the
product.



=head2 SupportDescription => Str

The updated support description for the product.



=head2 SupportEmail => Str

The updated support email for the product.



=head2 SupportUrl => Str

The updated support URL for the product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

