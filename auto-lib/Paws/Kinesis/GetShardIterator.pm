
package Paws::Kinesis::GetShardIterator;
  use Moose;
  has ShardId => (is => 'ro', isa => 'Str', required => 1);
  has ShardIteratorType => (is => 'ro', isa => 'Str', required => 1);
  has StartingSequenceNumber => (is => 'ro', isa => 'Str');
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has Timestamp => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetShardIterator');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::GetShardIteratorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::GetShardIterator - Arguments for method GetShardIterator on Paws::Kinesis

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetShardIterator on the 
Amazon Kinesis service. Use the attributes of this class
as arguments to method GetShardIterator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetShardIterator.

As an example:

  $service_obj->GetShardIterator(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ShardId => Str

The shard ID of the Amazon Kinesis shard to get the iterator for.



=head2 B<REQUIRED> ShardIteratorType => Str

Determines how the shard iterator is used to start reading data records
from the shard.

The following are the valid Amazon Kinesis shard iterator types:

=over

=item *

AT_SEQUENCE_NUMBER - Start reading from the position denoted by a
specific sequence number, provided in the value
C<StartingSequenceNumber>.

=item *

AFTER_SEQUENCE_NUMBER - Start reading right after the position denoted
by a specific sequence number, provided in the value
C<StartingSequenceNumber>.

=item *

AT_TIMESTAMP - Start reading from the position denoted by a specific
timestamp, provided in the value C<Timestamp>.

=item *

TRIM_HORIZON - Start reading at the last untrimmed record in the shard
in the system, which is the oldest data record in the shard.

=item *

LATEST - Start reading just after the most recent record in the shard,
so that you always read the most recent data in the shard.

=back


Valid values are: C<"AT_SEQUENCE_NUMBER">, C<"AFTER_SEQUENCE_NUMBER">, C<"TRIM_HORIZON">, C<"LATEST">, C<"AT_TIMESTAMP">

=head2 StartingSequenceNumber => Str

The sequence number of the data record in the shard from which to start
reading. Used with shard iterator type AT_SEQUENCE_NUMBER and
AFTER_SEQUENCE_NUMBER.



=head2 B<REQUIRED> StreamName => Str

The name of the Amazon Kinesis stream.



=head2 Timestamp => Str

The timestamp of the data record from which to start reading. Used with
shard iterator type AT_TIMESTAMP. A timestamp is the Unix epoch date
with precision in milliseconds. For example,
C<2016-04-04T19:58:46.480-00:00> or C<1459799926.480>. If a record with
this exact timestamp does not exist, the iterator returned is for the
next (later) record. If the timestamp is older than the current trim
horizon, the iterator returned is for the oldest untrimmed data record
(TRIM_HORIZON).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetShardIterator in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

