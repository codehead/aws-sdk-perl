
package Paws::CloudFormation::UpdateTerminationProtection;
  use Moose;
  has EnableTerminationProtection => (is => 'ro', isa => 'Bool', required => 1);
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTerminationProtection');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateTerminationProtectionOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateTerminationProtectionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateTerminationProtection - Arguments for method UpdateTerminationProtection on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTerminationProtection on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method UpdateTerminationProtection.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTerminationProtection.

As an example:

  $service_obj->UpdateTerminationProtection(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnableTerminationProtection => Bool

Whether to enable termination protection on the specified stack.



=head2 B<REQUIRED> StackName => Str

The name or unique ID of the stack for which you want to set
termination protection.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTerminationProtection in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

