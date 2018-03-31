package Paws::ServiceCatalog::RecordDetail;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has PathId => (is => 'ro', isa => 'Str');
  has ProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductId => (is => 'ro', isa => 'Str');
  has ProvisionedProductName => (is => 'ro', isa => 'Str');
  has ProvisionedProductType => (is => 'ro', isa => 'Str');
  has ProvisioningArtifactId => (is => 'ro', isa => 'Str');
  has RecordErrors => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordError]');
  has RecordId => (is => 'ro', isa => 'Str');
  has RecordTags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::RecordTag]');
  has RecordType => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has UpdatedTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::RecordDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::RecordDetail object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., UpdatedTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::RecordDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

The full details of a specific ProvisionedProduct object.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC timestamp of the creation time.


=head2 PathId => Str

  The identifier of the path for this product's provisioning.


=head2 ProductId => Str

  The product identifier.


=head2 ProvisionedProductId => Str

  The identifier of the ProvisionedProduct object.


=head2 ProvisionedProductName => Str

  The user-friendly name of the ProvisionedProduct object.


=head2 ProvisionedProductType => Str

  The type of the ProvisionedProduct object.


=head2 ProvisioningArtifactId => Str

  The provisioning artifact identifier for this product. This is
sometimes referred to as the product version.


=head2 RecordErrors => ArrayRef[L<Paws::ServiceCatalog::RecordError>]

  A list of errors that occurred while processing the request.


=head2 RecordId => Str

  The identifier of the ProvisionedProduct object record.


=head2 RecordTags => ArrayRef[L<Paws::ServiceCatalog::RecordTag>]

  List of tags associated with this record.


=head2 RecordType => Str

  The record type for this record.


=head2 Status => Str

  The status of the ProvisionedProduct object.

C<CREATED> - Request created but the operation has not yet started.

C<IN_PROGRESS> - The requested operation is in-progress.

C<IN_PROGRESS_IN_ERROR> - The provisioned product is under change but
the requested operation failed and some remediation is occurring. For
example, a rollback.

C<SUCCEEDED> - The requested operation has successfully completed.

C<FAILED> - The requested operation has completed but has failed.
Investigate using the error messages returned.


=head2 UpdatedTime => Str

  The time when the record for the ProvisionedProduct object was last
updated.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

