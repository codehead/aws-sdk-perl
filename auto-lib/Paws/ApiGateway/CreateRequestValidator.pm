
package Paws::ApiGateway::CreateRequestValidator;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has RestApiId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'restApiId', required => 1);
  has ValidateRequestBody => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'validateRequestBody');
  has ValidateRequestParameters => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'validateRequestParameters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRequestValidator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/restapis/{restapi_id}/requestvalidators');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::RequestValidator');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::CreateRequestValidator - Arguments for method CreateRequestValidator on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRequestValidator on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method CreateRequestValidator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRequestValidator.

As an example:

  $service_obj->CreateRequestValidator(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Name => Str

The name of the to-be-created RequestValidator.



=head2 B<REQUIRED> RestApiId => Str

The string identifier of the associated RestApi.



=head2 ValidateRequestBody => Bool

A Boolean flag to indicate whether to validate request body according
to the configured model schema for the method (C<true>) or not
(C<false>).



=head2 ValidateRequestParameters => Bool

A Boolean flag to indicate whether to validate request parameters,
C<true>, or not C<false>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRequestValidator in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

