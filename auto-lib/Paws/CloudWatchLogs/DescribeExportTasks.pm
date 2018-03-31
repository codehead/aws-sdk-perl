
package Paws::CloudWatchLogs::DescribeExportTasks;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StatusCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusCode' );
  has TaskId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExportTasks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::DescribeExportTasksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeExportTasks - Arguments for method DescribeExportTasks on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExportTasks on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method DescribeExportTasks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExportTasks.

As an example:

  $service_obj->DescribeExportTasks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of items returned. If you don't specify a value, the
default is up to 50 items.



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)



=head2 StatusCode => Str

The status code of the export task. Specifying a status code filters
the results to zero or more export tasks.

Valid values are: C<"CANCELLED">, C<"COMPLETED">, C<"FAILED">, C<"PENDING">, C<"PENDING_CANCEL">, C<"RUNNING">

=head2 TaskId => Str

The ID of the export task. Specifying a task ID filters the results to
zero or one export tasks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExportTasks in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

