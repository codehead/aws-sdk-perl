
package Paws::ApiGateway::CreateDocumentationPart;
  use Moose;
  has Location => (is => 'ro', isa => 'Paws::ApiGateway::DocumentationPartLocation', traits => ['NameInRequest'], request_name => 'location', required => 1);
  has Properties => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'properties', required => 1);
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDocumentationPart');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/parts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationPart');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateDocumentationPart - Arguments for method CreateDocumentationPart on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDocumentationPart on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateDocumentationPart.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDocumentationPart.

As an example:

  $service_obj->CreateDocumentationPart(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Location => L<Paws::ApiGateway::DocumentationPartLocation>

[Required] The location of the targeted API entity of the to-be-created
documentation part.



=head2 B<REQUIRED> Properties => Str

[Required] The new documentation content map of the targeted API
entity. Enclosed key-value pairs are API-specific, but only
Swagger-compliant key-value pairs can be exported and, hence,
published.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDocumentationPart in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

