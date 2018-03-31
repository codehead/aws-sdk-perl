
package Paws::DynamoDB::CreateTable;
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeDefinition]', required => 1);
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndex]');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]', required => 1);
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::LocalSecondaryIndex]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughput', required => 1);
  has StreamSpecification => (is => 'ro', isa => 'Paws::DynamoDB::StreamSpecification');
  has TableName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::CreateTableOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::CreateTable - Arguments for method CreateTable on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTable on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method CreateTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTable.

As an example:

  $service_obj->CreateTable(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]

An array of attributes that describe the key schema for the table and
indexes.



=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndex>]

One or more global secondary indexes (the maximum is five) to be
created on the table. Each global secondary index in the array includes
the following:

=over

=item *

C<IndexName> - The name of the global secondary index. Must be unique
only for this table.

=item *

C<KeySchema> - Specifies the key schema for the global secondary index.

=item *

C<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

C<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes are in C<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

C<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in C<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 20. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total.

=back

=item *

C<ProvisionedThroughput> - The provisioned throughput settings for the
global secondary index, consisting of read and write capacity units.

=back




=head2 B<REQUIRED> KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

Specifies the attributes that make up the primary key for a table or an
index. The attributes in C<KeySchema> must also be defined in the
C<AttributeDefinitions> array. For more information, see Data Model in
the I<Amazon DynamoDB Developer Guide>.

Each C<KeySchemaElement> in the array is composed of:

=over

=item *

C<AttributeName> - The name of this key attribute.

=item *

C<KeyType> - The role that the key attribute will assume:

=over

=item *

C<HASH> - partition key

=item *

C<RANGE> - sort key

=back

=back

The partition key of an item is also known as its I<hash attribute>.
The term "hash attribute" derives from DynamoDB' usage of an internal
hash function to evenly distribute data items across partitions, based
on their partition key values.

The sort key of an item is also known as its I<range attribute>. The
term "range attribute" derives from the way DynamoDB stores items with
the same partition key physically close together, in sorted order by
the sort key value.

For a simple primary key (partition key), you must provide exactly one
element with a C<KeyType> of C<HASH>.

For a composite primary key (partition key and sort key), you must
provide exactly two elements, in this order: The first element must
have a C<KeyType> of C<HASH>, and the second element must have a
C<KeyType> of C<RANGE>.

For more information, see Specifying the Primary Key in the I<Amazon
DynamoDB Developer Guide>.



=head2 LocalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::LocalSecondaryIndex>]

One or more local secondary indexes (the maximum is five) to be created
on the table. Each index is scoped to a given partition key value.
There is a 10 GB size limit per partition key value; otherwise, the
size of a local secondary index is unconstrained.

Each local secondary index in the array includes the following:

=over

=item *

C<IndexName> - The name of the local secondary index. Must be unique
only for this table.

=item *

C<KeySchema> - Specifies the key schema for the local secondary index.
The key schema must begin with the same partition key as the table.

=item *

C<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

C<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes are in C<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

C<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in C<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 20. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total.

=back

=back




=head2 B<REQUIRED> ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughput>

Represents the provisioned throughput settings for a specified table or
index. The settings can be modified using the C<UpdateTable> operation.

For current minimum and maximum provisioned throughput values, see
Limits in the I<Amazon DynamoDB Developer Guide>.



=head2 StreamSpecification => L<Paws::DynamoDB::StreamSpecification>

The settings for DynamoDB Streams on the table. These settings consist
of:

=over

=item *

C<StreamEnabled> - Indicates whether Streams is to be enabled (true) or
disabled (false).

=item *

C<StreamViewType> - When an item in the table is modified,
C<StreamViewType> determines what information is written to the table's
stream. Valid values for C<StreamViewType> are:

=over

=item *

C<KEYS_ONLY> - Only the key attributes of the modified item are written
to the stream.

=item *

C<NEW_IMAGE> - The entire item, as it appears after it was modified, is
written to the stream.

=item *

C<OLD_IMAGE> - The entire item, as it appeared before it was modified,
is written to the stream.

=item *

C<NEW_AND_OLD_IMAGES> - Both the new and the old item images of the
item are written to the stream.

=back

=back




=head2 B<REQUIRED> TableName => Str

The name of the table to create.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTable in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

