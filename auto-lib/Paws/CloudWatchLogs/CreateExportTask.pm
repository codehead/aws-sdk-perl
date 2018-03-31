
package Paws::CloudWatchLogs::CreateExportTask;
  use Moose;
  has Destination => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destination' , required => 1);
  has DestinationPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationPrefix' );
  has From => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'from' , required => 1);
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamNamePrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logStreamNamePrefix' );
  has TaskName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskName' );
  has To => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'to' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::CreateExportTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::CreateExportTask - Arguments for method CreateExportTask on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExportTask on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method CreateExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExportTask.

As an example:

  $service_obj->CreateExportTask(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Destination => Str

The name of S3 bucket for the exported log data. The bucket must be in
the same AWS region.



=head2 DestinationPrefix => Str

The prefix used as the start of the key for every object exported. If
you don't specify a value, the default is C<exportedlogs>.



=head2 B<REQUIRED> From => Int

The start time of the range for the request, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp
earlier than this time are not exported.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 LogStreamNamePrefix => Str

Export only log streams that match the provided prefix. If you don't
specify a value, no prefix filter is applied.



=head2 TaskName => Str

The name of the export task.



=head2 B<REQUIRED> To => Int

The end time of the range for the request, expressed as the number of
milliseconds after Jan 1, 1970 00:00:00 UTC. Events with a time stamp
later than this time are not exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExportTask in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

