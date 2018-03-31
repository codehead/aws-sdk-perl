package Paws::ServiceCatalog::ProvisioningArtifactDetail;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::ProvisioningArtifactDetail

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ServiceCatalog::ProvisioningArtifactDetail object:

  $service_obj->Method(Att1 => { CreatedTime => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ServiceCatalog::ProvisioningArtifactDetail object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedTime

=head1 DESCRIPTION

Detailed provisioning artifact information.

=head1 ATTRIBUTES


=head2 CreatedTime => Str

  The UTC timestamp of the creation time.


=head2 Description => Str

  The text description of the provisioning artifact.


=head2 Id => Str

  The identifier of the provisioning artifact. This is sometimes referred
to as the product version.


=head2 Name => Str

  The name assigned to the provisioning artifact.


=head2 Type => Str

  The type of the provisioning artifact. The following provisioning
artifact types are used by AWS Marketplace products:

C<MARKETPLACE_AMI> - AMI products.

C<MARKETPLACE_CAR> - CAR (Cluster and AWS Resources) products.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

