
package Paws::ApiGateway::PutIntegrationResponse;
  use Moose;
  has ContentHandling => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contentHandling');
  has HttpMethod => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'httpMethod', required => 1);
  has ResourceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceId', required => 1);
  has ResponseParameters => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseParameters');
  has ResponseTemplates => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'responseTemplates');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has SelectionPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'selectionPattern');
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'statusCode', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntegrationResponse');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/resources/{resource_id}/methods/{http_method}/integration/responses/{status_code}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::IntegrationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::PutIntegrationResponse - Arguments for method PutIntegrationResponse on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntegrationResponse on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method PutIntegrationResponse.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntegrationResponse.

As an example:

  $service_obj->PutIntegrationResponse(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ContentHandling => Str

Specifies how to handle response payload content type conversions.
Supported values are C<CONVERT_TO_BINARY> and C<CONVERT_TO_TEXT>, with
the following behaviors:

=over

=item *

C<CONVERT_TO_BINARY>: Converts a response payload from a Base64-encoded
string to the corresponding binary blob.

=item *

C<CONVERT_TO_TEXT>: Converts a response payload from a binary blob to a
Base64-encoded string.

=back

If this property is not defined, the response payload will be passed
through from the integration response to the method response without
modification.

Valid values are: C<"CONVERT_TO_BINARY">, C<"CONVERT_TO_TEXT">

=head2 B<REQUIRED> HttpMethod => Str

Specifies a put integration response request's HTTP method.



=head2 B<REQUIRED> ResourceId => Str

Specifies a put integration response request's resource identifier.



=head2 ResponseParameters => L<Paws::ApiGateway::MapOfStringToString>

A key-value map specifying response parameters that are passed to the
method response from the back end. The key is a method response header
parameter name and the mapped value is an integration response header
value, a static value enclosed within a pair of single quotes, or a
JSON expression from the integration response body. The mapping key
must match the pattern of C<method.response.header.{name}>, where
C<name> is a valid and unique header name. The mapped non-static value
must match the pattern of C<integration.response.header.{name}> or
C<integration.response.body.{JSON-expression}>, where C<name> must be a
valid and unique response header name and C<JSON-expression> a valid
JSON expression without the C<$> prefix.



=head2 ResponseTemplates => L<Paws::ApiGateway::MapOfStringToString>

Specifies a put integration response's templates.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 SelectionPattern => Str

Specifies the selection pattern of a put integration response.



=head2 B<REQUIRED> StatusCode => Str

Specifies the status code that is used to map the integration response
to an existing MethodResponse.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntegrationResponse in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

