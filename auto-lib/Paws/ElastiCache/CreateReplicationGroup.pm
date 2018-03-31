
package Paws::ElastiCache::CreateReplicationGroup;
  use Moose;
  has AuthToken => (is => 'ro', isa => 'Str');
  has AutomaticFailoverEnabled => (is => 'ro', isa => 'Bool');
  has AutoMinorVersionUpgrade => (is => 'ro', isa => 'Bool');
  has CacheNodeType => (is => 'ro', isa => 'Str');
  has CacheParameterGroupName => (is => 'ro', isa => 'Str');
  has CacheSecurityGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CacheSubnetGroupName => (is => 'ro', isa => 'Str');
  has Engine => (is => 'ro', isa => 'Str');
  has EngineVersion => (is => 'ro', isa => 'Str');
  has NodeGroupConfiguration => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::NodeGroupConfiguration]');
  has NotificationTopicArn => (is => 'ro', isa => 'Str');
  has NumCacheClusters => (is => 'ro', isa => 'Int');
  has NumNodeGroups => (is => 'ro', isa => 'Int');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredCacheClusterAZs => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PrimaryClusterId => (is => 'ro', isa => 'Str');
  has ReplicasPerNodeGroup => (is => 'ro', isa => 'Int');
  has ReplicationGroupDescription => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has SnapshotName => (is => 'ro', isa => 'Str');
  has SnapshotRetentionLimit => (is => 'ro', isa => 'Int');
  has SnapshotWindow => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::ElastiCache::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::CreateReplicationGroupResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateReplicationGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::CreateReplicationGroup - Arguments for method CreateReplicationGroup on Paws::ElastiCache

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateReplicationGroup on the 
Amazon ElastiCache service. Use the attributes of this class
as arguments to method CreateReplicationGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateReplicationGroup.

As an example:

  $service_obj->CreateReplicationGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthToken => Str

B<Reserved parameter.> The password used to access a password protected
server.

Password constraints:

=over

=item *

Must be only printable ASCII characters.

=item *

Must be at least 16 characters and no more than 128 characters in
length.

=item *

Cannot contain any of the following characters: '/', '"', or "@".

=back

For more information, see AUTH password at Redis.



=head2 AutomaticFailoverEnabled => Bool

Specifies whether a read-only replica is automatically promoted to
read/write primary if the existing primary fails.

If C<true>, Multi-AZ is enabled for this replication group. If
C<false>, Multi-AZ is disabled for this replication group.

C<AutomaticFailoverEnabled> must be enabled for Redis (cluster mode
enabled) replication groups.

Default: false

ElastiCache Multi-AZ replication groups is not supported on:

=over

=item *

Redis versions earlier than 2.8.6.

=item *

Redis (cluster mode disabled): T1 and T2 node types.

Redis (cluster mode enabled): T2 node types.

=back




=head2 AutoMinorVersionUpgrade => Bool

This parameter is currently disabled.



=head2 CacheNodeType => Str

The compute and memory capacity of the nodes in the node group (shard).

Valid node types are as follows:

=over

=item *

General purpose:

=over

=item *

Current generation: C<cache.t2.micro>, C<cache.t2.small>,
C<cache.t2.medium>, C<cache.m3.medium>, C<cache.m3.large>,
C<cache.m3.xlarge>, C<cache.m3.2xlarge>, C<cache.m4.large>,
C<cache.m4.xlarge>, C<cache.m4.2xlarge>, C<cache.m4.4xlarge>,
C<cache.m4.10xlarge>

=item *

Previous generation: C<cache.t1.micro>, C<cache.m1.small>,
C<cache.m1.medium>, C<cache.m1.large>, C<cache.m1.xlarge>

=back

=item *

Compute optimized: C<cache.c1.xlarge>

=item *

Memory optimized:

=over

=item *

Current generation: C<cache.r3.large>, C<cache.r3.xlarge>,
C<cache.r3.2xlarge>, C<cache.r3.4xlarge>, C<cache.r3.8xlarge>

=item *

Previous generation: C<cache.m2.xlarge>, C<cache.m2.2xlarge>,
C<cache.m2.4xlarge>

=back

=back

B<Notes:>

=over

=item *

All T2 instances are created in an Amazon Virtual Private Cloud (Amazon
VPC).

=item *

Redis backup/restore is not supported for Redis (cluster mode disabled)
T1 and T2 instances. Backup/restore is supported on Redis (cluster mode
enabled) T2 instances.

=item *

Redis Append-only files (AOF) functionality is not supported for T1 or
T2 instances.

=back

For a complete listing of node types and specifications, see Amazon
ElastiCache Product Features and Details and either Cache Node
Type-Specific Parameters for Memcached or Cache Node Type-Specific
Parameters for Redis.



=head2 CacheParameterGroupName => Str

The name of the parameter group to associate with this replication
group. If this argument is omitted, the default cache parameter group
for the specified engine is used.

If you are running Redis version 3.2.4 or later, only one node group
(shard), and want to use a default parameter group, we recommend that
you specify the parameter group by name.

=over

=item *

To create a Redis (cluster mode disabled) replication group, use
C<CacheParameterGroupName=default.redis3.2>.

=item *

To create a Redis (cluster mode enabled) replication group, use
C<CacheParameterGroupName=default.redis3.2.cluster.on>.

=back




=head2 CacheSecurityGroupNames => ArrayRef[Str|Undef]

A list of cache security group names to associate with this replication
group.



=head2 CacheSubnetGroupName => Str

The name of the cache subnet group to be used for the replication
group.

If you're going to launch your cluster in an Amazon VPC, you need to
create a subnet group before you start creating a cluster. For more
information, see Subnets and Subnet Groups.



=head2 Engine => Str

The name of the cache engine to be used for the cache clusters in this
replication group.



=head2 EngineVersion => Str

The version number of the cache engine to be used for the cache
clusters in this replication group. To view the supported cache engine
versions, use the C<DescribeCacheEngineVersions> operation.

B<Important:> You can upgrade to a newer engine version (see Selecting
a Cache Engine and Version) in the I<ElastiCache User Guide>, but you
cannot downgrade to an earlier engine version. If you want to use an
earlier engine version, you must delete the existing cache cluster or
replication group and create it anew with the earlier engine version.



=head2 NodeGroupConfiguration => ArrayRef[L<Paws::ElastiCache::NodeGroupConfiguration>]

A list of node group (shard) configuration options. Each node group
(shard) configuration has the following: Slots,
PrimaryAvailabilityZone, ReplicaAvailabilityZones, ReplicaCount.

If you're creating a Redis (cluster mode disabled) or a Redis (cluster
mode enabled) replication group, you can use this parameter to
individually configure each node group (shard), or you can omit this
parameter.



=head2 NotificationTopicArn => Str

The Amazon Resource Name (ARN) of the Amazon Simple Notification
Service (SNS) topic to which notifications are sent.

The Amazon SNS topic owner must be the same as the cache cluster owner.



=head2 NumCacheClusters => Int

The number of clusters this replication group initially has.

This parameter is not used if there is more than one node group
(shard). You should use C<ReplicasPerNodeGroup> instead.

If C<AutomaticFailoverEnabled> is C<true>, the value of this parameter
must be at least 2. If C<AutomaticFailoverEnabled> is C<false> you can
omit this parameter (it will default to 1), or you can explicitly set
it to a value between 2 and 6.

The maximum permitted value for C<NumCacheClusters> is 6 (primary plus
5 replicas).



=head2 NumNodeGroups => Int

An optional parameter that specifies the number of node groups (shards)
for this Redis (cluster mode enabled) replication group. For Redis
(cluster mode disabled) either omit this parameter or set it to 1.

Default: 1



=head2 Port => Int

The port number on which each member of the replication group accepts
connections.



=head2 PreferredCacheClusterAZs => ArrayRef[Str|Undef]

A list of EC2 Availability Zones in which the replication group's cache
clusters are created. The order of the Availability Zones in the list
is the order in which clusters are allocated. The primary cluster is
created in the first AZ in the list.

This parameter is not used if there is more than one node group
(shard). You should use C<NodeGroupConfiguration> instead.

If you are creating your replication group in an Amazon VPC
(recommended), you can only locate cache clusters in Availability Zones
associated with the subnets in the selected subnet group.

The number of Availability Zones listed must equal the value of
C<NumCacheClusters>.

Default: system chosen Availability Zones.



=head2 PreferredMaintenanceWindow => Str

Specifies the weekly time range during which maintenance on the cache
cluster is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period. Valid values for C<ddd> are:

Specifies the weekly time range during which maintenance on the cluster
is performed. It is specified as a range in the format
ddd:hh24:mi-ddd:hh24:mi (24H Clock UTC). The minimum maintenance window
is a 60 minute period.

Valid values for C<ddd> are:

=over

=item *

C<sun>

=item *

C<mon>

=item *

C<tue>

=item *

C<wed>

=item *

C<thu>

=item *

C<fri>

=item *

C<sat>

=back

Example: C<sun:23:00-mon:01:30>



=head2 PrimaryClusterId => Str

The identifier of the cache cluster that serves as the primary for this
replication group. This cache cluster must already exist and have a
status of C<available>.

This parameter is not required if C<NumCacheClusters>,
C<NumNodeGroups>, or C<ReplicasPerNodeGroup> is specified.



=head2 ReplicasPerNodeGroup => Int

An optional parameter that specifies the number of replica nodes in
each node group (shard). Valid values are 0 to 5.



=head2 B<REQUIRED> ReplicationGroupDescription => Str

A user-created description for the replication group.



=head2 B<REQUIRED> ReplicationGroupId => Str

The replication group identifier. This parameter is stored as a
lowercase string.

Constraints:

=over

=item *

A name must contain from 1 to 20 alphanumeric characters or hyphens.

=item *

The first character must be a letter.

=item *

A name cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 SecurityGroupIds => ArrayRef[Str|Undef]

One or more Amazon VPC security groups associated with this replication
group.

Use this parameter only when you are creating a replication group in an
Amazon Virtual Private Cloud (Amazon VPC).



=head2 SnapshotArns => ArrayRef[Str|Undef]

A list of Amazon Resource Names (ARN) that uniquely identify the Redis
RDB snapshot files stored in Amazon S3. The snapshot files are used to
populate the new replication group. The Amazon S3 object name in the
ARN cannot contain any commas. The new replication group will have the
number of node groups (console: shards) specified by the parameter
I<NumNodeGroups> or the number of node groups configured by
I<NodeGroupConfiguration> regardless of the number of ARNs specified
here.

This parameter is only valid if the C<Engine> parameter is C<redis>.

Example of an Amazon S3 ARN: C<arn:aws:s3:::my_bucket/snapshot1.rdb>



=head2 SnapshotName => Str

The name of a snapshot from which to restore data into the new
replication group. The snapshot status changes to C<restoring> while
the new replication group is being created.

This parameter is only valid if the C<Engine> parameter is C<redis>.



=head2 SnapshotRetentionLimit => Int

The number of days for which ElastiCache retains automatic snapshots
before deleting them. For example, if you set C<SnapshotRetentionLimit>
to 5, a snapshot that was taken today is retained for 5 days before
being deleted.

This parameter is only valid if the C<Engine> parameter is C<redis>.

Default: 0 (i.e., automatic backups are disabled for this cache
cluster).



=head2 SnapshotWindow => Str

The daily time range (in UTC) during which ElastiCache begins taking a
daily snapshot of your node group (shard).

Example: C<05:00-09:00>

If you do not specify this parameter, ElastiCache automatically chooses
an appropriate time range.

This parameter is only valid if the C<Engine> parameter is C<redis>.



=head2 Tags => ArrayRef[L<Paws::ElastiCache::Tag>]

A list of cost allocation tags to be added to this resource. A tag is a
key-value pair. A tag key must be accompanied by a tag value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateReplicationGroup in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

