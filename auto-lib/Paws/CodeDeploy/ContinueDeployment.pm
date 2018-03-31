
package Paws::CodeDeploy::ContinueDeployment;
  use Moose;
  has DeploymentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ContinueDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::ContinueDeployment - Arguments for method ContinueDeployment on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method ContinueDeployment on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method ContinueDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ContinueDeployment.

As an example:

  $service_obj->ContinueDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DeploymentId => Str

The deployment ID of the blue/green deployment for which you want to
start rerouting traffic to the replacement environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ContinueDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

