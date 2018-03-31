
package Paws::EC2::RunScheduledInstances;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool');
  has InstanceCount => (is => 'ro', isa => 'Int');
  has LaunchSpecification => (is => 'ro', isa => 'Paws::EC2::ScheduledInstancesLaunchSpecification', required => 1);
  has ScheduledInstanceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunScheduledInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RunScheduledInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RunScheduledInstances - Arguments for method RunScheduledInstances on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunScheduledInstances on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method RunScheduledInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunScheduledInstances.

As an example:

  $service_obj->RunScheduledInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

Unique, case-sensitive identifier that ensures the idempotency of the
request. For more information, see Ensuring Idempotency.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceCount => Int

The number of instances.

Default: 1



=head2 B<REQUIRED> LaunchSpecification => L<Paws::EC2::ScheduledInstancesLaunchSpecification>

The launch specification. You must match the instance type,
Availability Zone, network, and platform of the schedule that you
purchased.



=head2 B<REQUIRED> ScheduledInstanceId => Str

The Scheduled Instance ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunScheduledInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

