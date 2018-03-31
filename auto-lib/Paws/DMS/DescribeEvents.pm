
package Paws::DMS::DescribeEvents;
  use Moose;
  has Duration => (is => 'ro', isa => 'Int');
  has EndTime => (is => 'ro', isa => 'Str');
  has EventCategories => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::DMS::Filter]');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');
  has SourceIdentifier => (is => 'ro', isa => 'Str');
  has SourceType => (is => 'ro', isa => 'Str');
  has StartTime => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEvents');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DescribeEventsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEvents - Arguments for method DescribeEvents on Paws::DMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEvents on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method DescribeEvents.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEvents.

As an example:

  $service_obj->DescribeEvents(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Duration => Int

The duration of the events to be listed.



=head2 EndTime => Str

The end time for the events to be listed.



=head2 EventCategories => ArrayRef[Str|Undef]

A list of event categories for a source type that you want to subscribe
to.



=head2 Filters => ArrayRef[L<Paws::DMS::Filter>]

Filters applied to the action.



=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.



=head2 MaxRecords => Int

The maximum number of records to include in the response. If more
records exist than the specified C<MaxRecords> value, a pagination
token called a marker is included in the response so that the remaining
results can be retrieved.

Default: 100

Constraints: Minimum 20, maximum 100.



=head2 SourceIdentifier => Str

The identifier of the event source. An identifier must begin with a
letter and must contain only ASCII letters, digits, and hyphens. It
cannot end with a hyphen or contain two consecutive hyphens.



=head2 SourceType => Str

The type of AWS DMS resource that generates events.

Valid values: replication-instance | migration-task

Valid values are: C<"replication-instance">

=head2 StartTime => Str

The start time for the events to be listed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEvents in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

