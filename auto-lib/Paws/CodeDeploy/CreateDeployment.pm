
package Paws::CodeDeploy::CreateDeployment;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoRollbackConfiguration => (is => 'ro', isa => 'Paws::CodeDeploy::AutoRollbackConfiguration', traits => ['NameInRequest'], request_name => 'autoRollbackConfiguration' );
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has DeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentGroupName' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has FileExistsBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fileExistsBehavior' );
  has IgnoreApplicationStopFailures => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'ignoreApplicationStopFailures' );
  has Revision => (is => 'ro', isa => 'Paws::CodeDeploy::RevisionLocation', traits => ['NameInRequest'], request_name => 'revision' );
  has TargetInstances => (is => 'ro', isa => 'Paws::CodeDeploy::TargetInstances', traits => ['NameInRequest'], request_name => 'targetInstances' );
  has UpdateOutdatedInstancesOnly => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'updateOutdatedInstancesOnly' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDeployment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::CreateDeploymentOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::CreateDeployment - Arguments for method CreateDeployment on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDeployment on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method CreateDeployment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDeployment.

As an example:

  $service_obj->CreateDeployment(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The name of an AWS CodeDeploy application associated with the
applicable IAM user or AWS account.



=head2 AutoRollbackConfiguration => L<Paws::CodeDeploy::AutoRollbackConfiguration>

Configuration information for an automatic rollback that is added when
a deployment is created.



=head2 DeploymentConfigName => Str

The name of a deployment configuration associated with the applicable
IAM user or AWS account.

If not specified, the value configured in the deployment group will be
used as the default. If the deployment group does not have a deployment
configuration associated with it, then CodeDeployDefault.OneAtATime
will be used by default.



=head2 DeploymentGroupName => Str

The name of the deployment group.



=head2 Description => Str

A comment about the deployment.



=head2 FileExistsBehavior => Str

Information about how AWS CodeDeploy handles files that already exist
in a deployment target location but weren't part of the previous
successful deployment.

The fileExistsBehavior parameter takes any of the following values:

=over

=item *

DISALLOW: The deployment fails. This is also the default behavior if no
option is specified.

=item *

OVERWRITE: The version of the file from the application revision
currently being deployed replaces the version already on the instance.

=item *

RETAIN: The version of the file already on the instance is kept and
used as part of the new deployment.

=back


Valid values are: C<"DISALLOW">, C<"OVERWRITE">, C<"RETAIN">

=head2 IgnoreApplicationStopFailures => Bool

If set to true, then if the deployment causes the ApplicationStop
deployment lifecycle event to an instance to fail, the deployment to
that instance will not be considered to have failed at that point and
will continue on to the BeforeInstall deployment lifecycle event.

If set to false or not specified, then if the deployment causes the
ApplicationStop deployment lifecycle event to fail to an instance, the
deployment to that instance will stop, and the deployment to that
instance will be considered to have failed.



=head2 Revision => L<Paws::CodeDeploy::RevisionLocation>

The type and location of the revision to deploy.



=head2 TargetInstances => L<Paws::CodeDeploy::TargetInstances>

Information about the instances that will belong to the replacement
environment in a blue/green deployment.



=head2 UpdateOutdatedInstancesOnly => Bool

Indicates whether to deploy to all instances or only to instances that
are not running the latest application revision.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDeployment in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

