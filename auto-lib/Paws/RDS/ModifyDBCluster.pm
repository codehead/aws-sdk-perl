
package Paws::RDS::ModifyDBCluster;
  use Moose;
  has ApplyImmediately => (is => 'ro', isa => 'Bool');
  has BackupRetentionPeriod => (is => 'ro', isa => 'Int');
  has DBClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has DBClusterParameterGroupName => (is => 'ro', isa => 'Str');
  has EnableIAMDatabaseAuthentication => (is => 'ro', isa => 'Bool');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NewDBClusterIdentifier => (is => 'ro', isa => 'Str');
  has OptionGroupName => (is => 'ro', isa => 'Str');
  has Port => (is => 'ro', isa => 'Int');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has VpcSecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::ModifyDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyDBCluster - Arguments for method ModifyDBCluster on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyDBCluster on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method ModifyDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyDBCluster.

As an example:

  $service_obj->ModifyDBCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ApplyImmediately => Bool

A value that specifies whether the modifications in this request and
any pending modifications are asynchronously applied as soon as
possible, regardless of the C<PreferredMaintenanceWindow> setting for
the DB cluster. If this parameter is set to C<false>, changes to the DB
cluster are applied during the next maintenance window.

The C<ApplyImmediately> parameter only affects the
C<NewDBClusterIdentifier> and C<MasterUserPassword> values. If you set
the C<ApplyImmediately> parameter value to false, then changes to the
C<NewDBClusterIdentifier> and C<MasterUserPassword> values are applied
during the next maintenance window. All other changes are applied
immediately, regardless of the value of the C<ApplyImmediately>
parameter.

Default: C<false>



=head2 BackupRetentionPeriod => Int

The number of days for which automated backups are retained. You must
specify a minimum value of 1.

Default: 1

Constraints:

=over

=item *

Must be a value from 1 to 35

=back




=head2 B<REQUIRED> DBClusterIdentifier => Str

The DB cluster identifier for the cluster being modified. This
parameter is not case-sensitive.

Constraints:

=over

=item *

Must be the identifier for an existing DB cluster.

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens.

=item *

First character must be a letter.

=item *

Cannot end with a hyphen or contain two consecutive hyphens.

=back




=head2 DBClusterParameterGroupName => Str

The name of the DB cluster parameter group to use for the DB cluster.



=head2 EnableIAMDatabaseAuthentication => Bool

A Boolean value that is true to enable mapping of AWS Identity and
Access Management (IAM) accounts to database accounts, and otherwise
false.

Default: C<false>



=head2 MasterUserPassword => Str

The new password for the master database user. This password can
contain any printable ASCII character except "/", """, or "@".

Constraints: Must contain from 8 to 41 characters.



=head2 NewDBClusterIdentifier => Str

The new DB cluster identifier for the DB cluster when renaming a DB
cluster. This value is stored as a lowercase string.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back

Example: C<my-cluster2>



=head2 OptionGroupName => Str

A value that indicates that the DB cluster should be associated with
the specified option group. Changing this parameter does not result in
an outage except in the following case, and the change is applied
during the next maintenance window unless the C<ApplyImmediately>
parameter is set to C<true> for this request. If the parameter change
results in an option group that enables OEM, this change can cause a
brief (sub-second) period during which new connections are rejected but
existing connections are not interrupted.

Permanent options cannot be removed from an option group. The option
group cannot be removed from a DB cluster once it is associated with a
DB cluster.



=head2 Port => Int

The port number on which the DB cluster accepts connections.

Constraints: Value must be C<1150-65535>

Default: The same port as the original DB cluster.



=head2 PreferredBackupWindow => Str

The daily time range during which automated backups are created if
automated backups are enabled, using the C<BackupRetentionPeriod>
parameter.

Default: A 30-minute window selected at random from an 8-hour block of
time per AWS Region. To see the time blocks available, see Adjusting
the Preferred Maintenance Window in the I<Amazon RDS User Guide.>

Constraints:

=over

=item *

Must be in the format C<hh24:mi-hh24:mi>.

=item *

Times should be in Universal Coordinated Time (UTC).

=item *

Must not conflict with the preferred maintenance window.

=item *

Must be at least 30 minutes.

=back




=head2 PreferredMaintenanceWindow => Str

The weekly time range during which system maintenance can occur, in
Universal Coordinated Time (UTC).

Format: C<ddd:hh24:mi-ddd:hh24:mi>

Default: A 30-minute window selected at random from an 8-hour block of
time per AWS Region, occurring on a random day of the week. To see the
time blocks available, see Adjusting the Preferred Maintenance Window
in the I<Amazon RDS User Guide.>

Valid Days: Mon, Tue, Wed, Thu, Fri, Sat, Sun

Constraints: Minimum 30-minute window.



=head2 VpcSecurityGroupIds => ArrayRef[Str|Undef]

A list of VPC security groups that the DB cluster will belong to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

