
package Paws::StepFunctions::CreateStateMachine;
  use Moose;
  has Definition => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definition' , required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStateMachine');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::CreateStateMachineOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::CreateStateMachine - Arguments for method CreateStateMachine on Paws::StepFunctions

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStateMachine on the 
AWS Step Functions service. Use the attributes of this class
as arguments to method CreateStateMachine.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStateMachine.

As an example:

  $service_obj->CreateStateMachine(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Definition => Str

The Amazon States Language definition of the state machine.



=head2 B<REQUIRED> Name => Str

The name of the state machine. This name must be unique for your AWS
account and region.



=head2 B<REQUIRED> RoleArn => Str

The Amazon Resource Name (ARN) of the IAM role to use for this state
machine.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStateMachine in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

