
package Paws::ApiGateway::GetDocumentationParts;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'limit');
  has NameQuery => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nameQuery');
  has Path => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'path');
  has Position => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'position');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'type');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDocumentationParts');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/documentation/parts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::DocumentationParts');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::GetDocumentationParts - Arguments for method GetDocumentationParts on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDocumentationParts on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method GetDocumentationParts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDocumentationParts.

As an example:

  $service_obj->GetDocumentationParts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of returned results per page.



=head2 NameQuery => Str

The name of API entities of the to-be-retrieved documentation parts.



=head2 Path => Str

The path of API entities of the to-be-retrieved documentation parts.



=head2 Position => Str

The current pagination position in the paged result set.



=head2 B<REQUIRED> RestApiId => Str

[Required] The string identifier of the associated RestApi.



=head2 Type => Str

The type of API entities of the to-be-retrieved documentation parts.

Valid values are: C<"API">, C<"AUTHORIZER">, C<"MODEL">, C<"RESOURCE">, C<"METHOD">, C<"PATH_PARAMETER">, C<"QUERY_PARAMETER">, C<"REQUEST_HEADER">, C<"REQUEST_BODY">, C<"RESPONSE">, C<"RESPONSE_HEADER">, C<"RESPONSE_BODY">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDocumentationParts in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

