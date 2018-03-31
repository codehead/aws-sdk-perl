
package Paws::ServiceCatalog::CreateProduct;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Distributor => (is => 'ro', isa => 'Str');
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Owner => (is => 'ro', isa => 'Str', required => 1);
  has ProductType => (is => 'ro', isa => 'Str', required => 1);
  has ProvisioningArtifactParameters => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactProperties', required => 1);
  has SupportDescription => (is => 'ro', isa => 'Str');
  has SupportEmail => (is => 'ro', isa => 'Str');
  has SupportUrl => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProduct');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::CreateProductOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::CreateProduct - Arguments for method CreateProduct on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProduct on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method CreateProduct.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProduct.

As an example:

  $service_obj->CreateProduct(Att1 => $value1, Att2 => $value2, ...);

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




=head2 Description => Str

The text description of the product.



=head2 Distributor => Str

The distributor of the product.



=head2 B<REQUIRED> IdempotencyToken => Str

A token to disambiguate duplicate requests. You can use the same input
in multiple requests, provided that you also specify a different
idempotency token for each request.



=head2 B<REQUIRED> Name => Str

The name of the product.



=head2 B<REQUIRED> Owner => Str

The owner of the product.



=head2 B<REQUIRED> ProductType => Str

The type of the product to create.

Valid values are: C<"CLOUD_FORMATION_TEMPLATE">, C<"MARKETPLACE">

=head2 B<REQUIRED> ProvisioningArtifactParameters => L<Paws::ServiceCatalog::ProvisioningArtifactProperties>

Parameters for the provisioning artifact.



=head2 SupportDescription => Str

Support information about the product.



=head2 SupportEmail => Str

Contact email for product support.



=head2 SupportUrl => Str

Contact URL for product support.



=head2 Tags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Tags to associate with the new product.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProduct in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

