
package Paws::ApiGateway::CreateDeployment;
  use Moose;
  has CacheClusterEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'cacheClusterEnabled');
  has CacheClusterSize => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cacheClusterSize');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has StageDescription => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageDescription');
  has StageName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stageName');
  has Variables => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'variables');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/deployments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Deployment');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDeployment - Arguments for method CreateDeployment on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

As an example:

  $service_obj->CreateDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CacheClusterEnabled => Bool

Enables a cache cluster for the Stage resource specified in the input.



=head2 CacheClusterSize => Str

Specifies the cache cluster size for the Stage resource specified in
the input, if a cache cluster is enabled.

Valid values are: C<"0.5">, C<"1.6">, C<"6.1">, C<"13.5">, C<"28.4">, C<"58.2">, C<"118">, C<"237">

=head2 Description => Str

The description for the Deployment resource to create.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 StageDescription => Str

The description of the Stage resource for the Deployment resource to
create.



=head2 StageName => Str

The name of the Stage resource for the Deployment resource to create.



=head2 Variables => L<Paws::ApiGateway::MapOfStringToString>

A map that defines the stage variables for the Stage resource that is
associated with the new deployment. Variable names can have
alphanumeric and underscore characters, and the values must match
C<[A-Za-z0-9-._~:/?&num;&=,]+>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

