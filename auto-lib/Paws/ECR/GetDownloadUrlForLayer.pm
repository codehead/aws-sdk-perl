
package Paws::ECR::GetDownloadUrlForLayer;
  use Moose;
  has LayerDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'layerDigest' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDownloadUrlForLayer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::GetDownloadUrlForLayerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetDownloadUrlForLayer - Arguments for method GetDownloadUrlForLayer on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDownloadUrlForLayer on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method GetDownloadUrlForLayer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDownloadUrlForLayer.

As an example:

  $service_obj->GetDownloadUrlForLayer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> LayerDigest => Str

The digest of the image layer to download.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the image
layer to download. If you do not specify a registry, the default
registry is assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository that is associated with the image layer to
download.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDownloadUrlForLayer in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

