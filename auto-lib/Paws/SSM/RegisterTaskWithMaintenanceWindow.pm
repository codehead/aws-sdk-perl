
package Paws::SSM::RegisterTaskWithMaintenanceWindow;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str', required => 1);
  has MaxErrors => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has ServiceRoleArn => (is => 'ro', isa => 'Str', required => 1);
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]', required => 1);
  has TaskArn => (is => 'ro', isa => 'Str', required => 1);
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has TaskType => (is => 'ro', isa => 'Str', required => 1);
  has WindowId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterTaskWithMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RegisterTaskWithMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RegisterTaskWithMaintenanceWindow - Arguments for method RegisterTaskWithMaintenanceWindow on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterTaskWithMaintenanceWindow on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method RegisterTaskWithMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterTaskWithMaintenanceWindow.

As an example:

  $service_obj->RegisterTaskWithMaintenanceWindow(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientToken => Str

User-provided idempotency token.



=head2 Description => Str

An optional description for the task.



=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

A structure containing information about an Amazon S3 bucket to write
instance-level logs to.



=head2 B<REQUIRED> MaxConcurrency => Str

The maximum number of targets this task can be run for in parallel.



=head2 B<REQUIRED> MaxErrors => Str

The maximum number of errors allowed before this task stops being
scheduled.



=head2 Name => Str

An optional name for the task.



=head2 Priority => Int

The priority of the task in the Maintenance Window, the lower the
number the higher the priority. Tasks in a Maintenance Window are
scheduled in priority order with tasks that have the same priority
scheduled in parallel.



=head2 B<REQUIRED> ServiceRoleArn => Str

The role that should be assumed when executing the task.



=head2 B<REQUIRED> Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags). Instances are specified using
Key=instanceids,Values=E<lt>instanceid1E<gt>,E<lt>instanceid2E<gt>.
Tags are specified using Key=E<lt>tag nameE<gt>,Values=E<lt>tag
valueE<gt>.



=head2 B<REQUIRED> TaskArn => Str

The ARN of the task to execute



=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters that the task should use during execution. Populate only
the fields that match the task type. All other fields should be empty.



=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters that should be passed to the task when it is executed.



=head2 B<REQUIRED> TaskType => Str

The type of task being registered.

Valid values are: C<"RUN_COMMAND">, C<"AUTOMATION">, C<"STEP_FUNCTIONS">, C<"LAMBDA">

=head2 B<REQUIRED> WindowId => Str

The id of the Maintenance Window the task should be added to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterTaskWithMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

