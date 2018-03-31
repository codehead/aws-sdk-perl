
package Paws::Greengrass::CreateFunctionDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has FunctionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'FunctionDefinitionId', required => 1);
  has Functions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Function]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateFunctionDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/functions/{FunctionDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateFunctionDefinitionVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateFunctionDefinitionVersion - Arguments for method CreateFunctionDefinitionVersion on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateFunctionDefinitionVersion on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method CreateFunctionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateFunctionDefinitionVersion.

As an example:

  $service_obj->CreateFunctionDefinitionVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 B<REQUIRED> FunctionDefinitionId => Str

the unique Id of the lambda definition



=head2 Functions => ArrayRef[L<Paws::Greengrass::Function>]

Lambda functions in this function definition version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateFunctionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

