
package Paws::CloudWatchLogs::FilterLogEvents;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'endTime' );
  has FilterPattern => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'filterPattern' );
  has Interleaved => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'interleaved' );
  has Limit => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'limit' );
  has LogGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logGroupName' , required => 1);
  has LogStreamNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logStreamNames' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StartTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FilterLogEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::FilterLogEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::FilterLogEvents - Arguments for method FilterLogEvents on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method FilterLogEvents on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method FilterLogEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FilterLogEvents.

As an example:

  $service_obj->FilterLogEvents(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EndTime => Int

The end of the time range, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC. Events with a time stamp later than
this time are not returned.



=head2 FilterPattern => Str

The filter pattern to use. If not provided, all the events are matched.



=head2 Interleaved => Bool

If the value is true, the operation makes a best effort to provide
responses that contain events from multiple log streams within the log
group, interleaved in a single response. If the value is false, all the
matched log events in the first log stream are searched first, then
those in the next log stream, and so on. The default is false.



=head2 Limit => Int

The maximum number of events to return. The default is 10,000 events.



=head2 B<REQUIRED> LogGroupName => Str

The name of the log group.



=head2 LogStreamNames => ArrayRef[Str|Undef]

Optional list of log stream names.



=head2 NextToken => Str

The token for the next set of events to return. (You received this
token from a previous call.)



=head2 StartTime => Int

The start of the time range, expressed as the number of milliseconds
after Jan 1, 1970 00:00:00 UTC. Events with a time stamp before this
time are not returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FilterLogEvents in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

