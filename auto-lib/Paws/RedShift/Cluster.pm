package Paws::RedShift::Cluster;
  use Moose;
  has AllowVersionUpgrade => (is => 'ro', isa => 'Bool');
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has ClusterCreateTime => (is => 'ro', isa => 'Str');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterNodes => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterNode]');
  has ClusterParameterGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterParameterGroupStatus]', request_name => 'ClusterParameterGroup', traits => ['NameInRequest']);
  has ClusterPublicKey => (is => 'ro', isa => 'Str');
  has ClusterRevisionNumber => (is => 'ro', isa => 'Str');
  has ClusterSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterSecurityGroupMembership]', request_name => 'ClusterSecurityGroup', traits => ['NameInRequest']);
  has ClusterSnapshotCopyStatus => (is => 'ro', isa => 'Paws::RedShift::ClusterSnapshotCopyStatus');
  has ClusterStatus => (is => 'ro', isa => 'Str');
  has ClusterSubnetGroupName => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has DBName => (is => 'ro', isa => 'Str');
  has ElasticIpStatus => (is => 'ro', isa => 'Paws::RedShift::ElasticIpStatus');
  has Encrypted => (is => 'ro', isa => 'Bool');
  has Endpoint => (is => 'ro', isa => 'Paws::RedShift::Endpoint');
  has EnhancedVpcRouting => (is => 'ro', isa => 'Bool');
  has HsmStatus => (is => 'ro', isa => 'Paws::RedShift::HsmStatus');
  has IamRoles => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::ClusterIamRole]', request_name => 'ClusterIamRole', traits => ['NameInRequest']);
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has MasterUsername => (is => 'ro', isa => 'Str');
  has ModifyStatus => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PendingModifiedValues => (is => 'ro', isa => 'Paws::RedShift::PendingModifiedValues');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has PubliclyAccessible => (is => 'ro', isa => 'Bool');
  has RestoreStatus => (is => 'ro', isa => 'Paws::RedShift::RestoreStatus');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Tag]', request_name => 'Tag', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str');
  has VpcSecurityGroups => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::VpcSecurityGroupMembership]', request_name => 'VpcSecurityGroup', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::Cluster

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::Cluster object:

  $service_obj->Method(Att1 => { AllowVersionUpgrade => $value, ..., VpcSecurityGroups => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::Cluster object:

  $result = $service_obj->Method(...);
  $result->Att1->AllowVersionUpgrade

=head1 DESCRIPTION

Describes a cluster.

=head1 ATTRIBUTES


=head2 AllowVersionUpgrade => Bool

  A Boolean value that, if C<true>, indicates that major version upgrades
will be applied automatically to the cluster during the maintenance
window.


=head2 AutomatedSnapshotRetentionPeriod => Int

  The number of days that automatic cluster snapshots are retained.


=head2 AvailabilityZone => Str

  The name of the Availability Zone in which the cluster is located.


=head2 ClusterCreateTime => Str

  The date and time that the cluster was created.


=head2 ClusterIdentifier => Str

  The unique identifier of the cluster.


=head2 ClusterNodes => ArrayRef[L<Paws::RedShift::ClusterNode>]

  The nodes in the cluster.


=head2 ClusterParameterGroups => ArrayRef[L<Paws::RedShift::ClusterParameterGroupStatus>]

  The list of cluster parameter groups that are associated with this
cluster. Each parameter group in the list is returned with its status.


=head2 ClusterPublicKey => Str

  The public key for the cluster.


=head2 ClusterRevisionNumber => Str

  The specific revision number of the database in the cluster.


=head2 ClusterSecurityGroups => ArrayRef[L<Paws::RedShift::ClusterSecurityGroupMembership>]

  A list of cluster security group that are associated with the cluster.
Each security group is represented by an element that contains
C<ClusterSecurityGroup.Name> and C<ClusterSecurityGroup.Status>
subelements.

Cluster security groups are used when the cluster is not created in an
Amazon Virtual Private Cloud (VPC). Clusters that are created in a VPC
use VPC security groups, which are listed by the B<VpcSecurityGroups>
parameter.


=head2 ClusterSnapshotCopyStatus => L<Paws::RedShift::ClusterSnapshotCopyStatus>

  A value that returns the destination region and retention period that
are configured for cross-region snapshot copy.


=head2 ClusterStatus => Str

  The current state of the cluster. Possible values are the following:

=over

=item *

C<available>

=item *

C<creating>

=item *

C<deleting>

=item *

C<final-snapshot>

=item *

C<hardware-failure>

=item *

C<incompatible-hsm>

=item *

C<incompatible-network>

=item *

C<incompatible-parameters>

=item *

C<incompatible-restore>

=item *

C<modifying>

=item *

C<rebooting>

=item *

C<renaming>

=item *

C<resizing>

=item *

C<rotating-keys>

=item *

C<storage-full>

=item *

C<updating-hsm>

=back



=head2 ClusterSubnetGroupName => Str

  The name of the subnet group that is associated with the cluster. This
parameter is valid only when the cluster is in a VPC.


=head2 ClusterVersion => Str

  The version ID of the Amazon Redshift engine that is running on the
cluster.


=head2 DBName => Str

  The name of the initial database that was created when the cluster was
created. This same name is returned for the life of the cluster. If an
initial database was not specified, a database named C<dev>dev was
created by default.


=head2 ElasticIpStatus => L<Paws::RedShift::ElasticIpStatus>

  The status of the elastic IP (EIP) address.


=head2 Encrypted => Bool

  A Boolean value that, if C<true>, indicates that data in the cluster is
encrypted at rest.


=head2 Endpoint => L<Paws::RedShift::Endpoint>

  The connection endpoint.


=head2 EnhancedVpcRouting => Bool

  An option that specifies whether to create the cluster with enhanced
VPC routing enabled. To create a cluster that uses enhanced VPC
routing, the cluster must be in a VPC. For more information, see
Enhanced VPC Routing in the Amazon Redshift Cluster Management Guide.

If this option is C<true>, enhanced VPC routing is enabled.

Default: false


=head2 HsmStatus => L<Paws::RedShift::HsmStatus>

  A value that reports whether the Amazon Redshift cluster has finished
applying any hardware security module (HSM) settings changes specified
in a modify cluster command.

Values: active, applying


=head2 IamRoles => ArrayRef[L<Paws::RedShift::ClusterIamRole>]

  A list of AWS Identity and Access Management (IAM) roles that can be
used by the cluster to access other AWS services.


=head2 KmsKeyId => Str

  The AWS Key Management Service (AWS KMS) key ID of the encryption key
used to encrypt data in the cluster.


=head2 MasterUsername => Str

  The master user name for the cluster. This name is used to connect to
the database that is specified in the B<DBName> parameter.


=head2 ModifyStatus => Str

  The status of a modify operation, if any, initiated for the cluster.


=head2 NodeType => Str

  The node type for the nodes in the cluster.


=head2 NumberOfNodes => Int

  The number of compute nodes in the cluster.


=head2 PendingModifiedValues => L<Paws::RedShift::PendingModifiedValues>

  A value that, if present, indicates that changes to the cluster are
pending. Specific pending changes are identified by subelements.


=head2 PreferredMaintenanceWindow => Str

  The weekly time range, in Universal Coordinated Time (UTC), during
which system maintenance can occur.


=head2 PubliclyAccessible => Bool

  A Boolean value that, if C<true>, indicates that the cluster can be
accessed from a public network.


=head2 RestoreStatus => L<Paws::RedShift::RestoreStatus>

  A value that describes the status of a cluster restore action. This
parameter returns null if the cluster was not created by restoring a
snapshot.


=head2 Tags => ArrayRef[L<Paws::RedShift::Tag>]

  The list of tags for the cluster.


=head2 VpcId => Str

  The identifier of the VPC the cluster is in, if the cluster is in a
VPC.


=head2 VpcSecurityGroups => ArrayRef[L<Paws::RedShift::VpcSecurityGroupMembership>]

  A list of Amazon Virtual Private Cloud (Amazon VPC) security groups
that are associated with the cluster. This parameter is returned only
if the cluster is in a VPC.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

