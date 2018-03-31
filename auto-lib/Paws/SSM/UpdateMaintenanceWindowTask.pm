
package Paws::SSM::UpdateMaintenanceWindowTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has LoggingInfo => (is => 'ro', isa => 'Paws::SSM::LoggingInfo');
  has MaxConcurrency => (is => 'ro', isa => 'Str');
  has MaxErrors => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Priority => (is => 'ro', isa => 'Int');
  has Replace => (is => 'ro', isa => 'Bool');
  has ServiceRoleArn => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has TaskArn => (is => 'ro', isa => 'Str');
  has TaskInvocationParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskInvocationParameters');
  has TaskParameters => (is => 'ro', isa => 'Paws::SSM::MaintenanceWindowTaskParameters');
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTaskId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceWindowTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateMaintenanceWindowTaskResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTask - Arguments for method UpdateMaintenanceWindowTask on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceWindowTask on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method UpdateMaintenanceWindowTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceWindowTask.

As an example:

  $service_obj->UpdateMaintenanceWindowTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

The new task description to specify.



=head2 LoggingInfo => L<Paws::SSM::LoggingInfo>

The new logging location in Amazon S3 to specify.



=head2 MaxConcurrency => Str

The new C<MaxConcurrency> value you want to specify. C<MaxConcurrency>
is the number of targets that are allowed to run this task in parallel.



=head2 MaxErrors => Str

The new C<MaxErrors> value to specify. C<MaxErrors> is the maximum
number of errors that are allowed before the task stops being
scheduled.



=head2 Name => Str

The new task name to specify.



=head2 Priority => Int

The new task priority to specify. The lower the number, the higher the
priority. Tasks that have the same priority are scheduled in parallel.



=head2 Replace => Bool

If True, then all fields that are required by the
RegisterTaskWithMaintenanceWndow action are also required for this API
request. Optional fields that are not specified are set to null.



=head2 ServiceRoleArn => Str

The IAM service role ARN to modify. The system assumes this role during
task execution.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets (either instances or tags) to modify. Instances are
specified using Key=instanceids,Values=instanceID_1,instanceID_2. Tags
are specified using Key=tag_name,Values=tag_value.



=head2 TaskArn => Str

The task ARN to modify.



=head2 TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>

The parameters that the task should use during execution. Populate only
the fields that match the task type. All other fields should be empty.



=head2 TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>

The parameters to modify. The map has the following format:

Key: string, between 1 and 255 characters

Value: an array of strings, each string is between 1 and 255 characters



=head2 B<REQUIRED> WindowId => Str

The Maintenance Window ID that contains the task to modify.



=head2 B<REQUIRED> WindowTaskId => Str

The task ID to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceWindowTask in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

