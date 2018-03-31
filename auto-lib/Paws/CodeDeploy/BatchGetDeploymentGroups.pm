
package Paws::CodeDeploy::BatchGetDeploymentGroups;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has DeploymentGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'deploymentGroupNames' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetDeploymentGroups');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::BatchGetDeploymentGroupsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::BatchGetDeploymentGroups - Arguments for method BatchGetDeploymentGroups on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetDeploymentGroups on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method BatchGetDeploymentGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetDeploymentGroups.

As an example:

  $service_obj->BatchGetDeploymentGroups(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the
applicable IAM user or AWS account.



=head2 B<REQUIRED> DeploymentGroupNames => ArrayRef[Str|Undef]

The deployment groups' names.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetDeploymentGroups in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

