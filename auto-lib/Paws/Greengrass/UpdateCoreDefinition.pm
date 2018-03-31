
package Paws::Greengrass::UpdateCoreDefinition;
  use Moose;
  has CoreDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'CoreDefinitionId', required => 1);
  has Name => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCoreDefinition');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/cores/{CoreDefinitionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::UpdateCoreDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::UpdateCoreDefinition - Arguments for method UpdateCoreDefinition on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCoreDefinition on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method UpdateCoreDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCoreDefinition.

As an example:

  $service_obj->UpdateCoreDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CoreDefinitionId => Str

core definition Id



=head2 Name => Str

name of the definition




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCoreDefinition in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

