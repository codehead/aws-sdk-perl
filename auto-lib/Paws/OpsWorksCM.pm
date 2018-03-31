package Paws::OpsWorksCM;
  use Moose;
  sub service { 'opsworks-cm' }
  sub version { '2016-11-01' }
  sub target_prefix { 'OpsWorksCM_V2016_11_01' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AssociateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::AssociateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::CreateBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::CreateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteBackup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DeleteBackup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DeleteServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBackups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeBackups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEvents {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeEvents', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNodeAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeNodeAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeServers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DescribeServers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateNode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::DisassociateNode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::RestoreServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartMaintenance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::StartMaintenance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServer {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::UpdateServer', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateServerEngineAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::OpsWorksCM::UpdateServerEngineAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  


  sub operations { qw/AssociateNode CreateBackup CreateServer DeleteBackup DeleteServer DescribeAccountAttributes DescribeBackups DescribeEvents DescribeNodeAssociationStatus DescribeServers DisassociateNode RestoreServer StartMaintenance UpdateServer UpdateServerEngineAttributes / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM - Perl Interface to AWS AWS OpsWorks for Chef Automate

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('OpsWorksCM');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS OpsWorks for Chef Automate

AWS OpsWorks for Chef Automate is a service that runs and manages
configuration management servers.

B<Glossary of terms>

=over

=item *

B<Server>: A configuration management server that can be
highly-available. The configuration manager runs on your instances by
using various AWS services, such as Amazon Elastic Compute Cloud (EC2),
and potentially Amazon Relational Database Service (RDS). A server is a
generic abstraction over the configuration manager that you want to
use, much like Amazon RDS. In AWS OpsWorks for Chef Automate, you do
not start or stop servers. After you create servers, they continue to
run until they are deleted.

=item *

B<Engine>: The specific configuration manager that you want to use
(such as C<Chef>) is the engine.

=item *

B<Backup>: This is an application-level backup of the data that the
configuration manager stores. A backup creates a .tar.gz file that is
stored in an Amazon Simple Storage Service (S3) bucket in your account.
AWS OpsWorks for Chef Automate creates the S3 bucket when you launch
the first instance. A backup maintains a snapshot of all of a server's
important attributes at the time of the backup.

=item *

B<Events>: Events are always related to a server. Events are written
during server creation, when health checks run, when backups are
created, etc. When you delete a server, the server's events are also
deleted.

=item *

B<AccountAttributes>: Every account has attributes that are assigned in
the AWS OpsWorks for Chef Automate database. These attributes store
information about configuration limits (servers, backups, etc.) and
your customer account.

=back

B<Endpoints>

AWS OpsWorks for Chef Automate supports the following endpoints, all
HTTPS. You must connect to one of the following endpoints. Chef servers
can only be accessed or managed within the endpoint in which they are
created.

=over

=item *

opsworks-cm.us-east-1.amazonaws.com

=item *

opsworks-cm.us-west-2.amazonaws.com

=item *

opsworks-cm.eu-west-1.amazonaws.com

=back

B<Throttling limits>

All API operations allow for five requests per second with a burst of
10 requests per second.

=head1 METHODS

=head2 AssociateNode(EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>], NodeName => Str, ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::AssociateNode>

Returns: a L<Paws::OpsWorksCM::AssociateNodeResponse> instance

  Associates a new node with the Chef server. This command is an
alternative to C<knife bootstrap>. For more information about how to
disassociate a node, see DisassociateNode.

A node can can only be associated with servers that are in a C<HEALTHY>
state. Otherwise, an C<InvalidStateException> is thrown. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
not valid. The AssociateNode API call can be integrated into Auto
Scaling configurations, AWS Cloudformation templates, or the user data
of a server's instance.

Example: C<aws opsworks-cm associate-node --server-name I<MyServer>
--node-name I<MyManagedNode> --engine-attributes
"Name=I<MyOrganization>,Value=default"
"Name=I<Chef_node_public_key>,Value=I<Public_key_contents>">


=head2 CreateBackup(ServerName => Str, [Description => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateBackup>

Returns: a L<Paws::OpsWorksCM::CreateBackupResponse> instance

  Creates an application-level backup of a server. While the server is in
the C<BACKING_UP> state, the server cannot be changed, and no
additional backup can be created.

Backups can be created for servers in C<RUNNING>, C<HEALTHY>, and
C<UNHEALTHY> states. By default, you can create a maximum of 50 manual
backups.

This operation is asynchronous.

A C<LimitExceededException> is thrown when the maximum number of manual
backups is reached. An C<InvalidStateException> is thrown when the
server is not in any of the following states: RUNNING, HEALTHY, or
UNHEALTHY. A C<ResourceNotFoundException> is thrown when the server is
not found. A C<ValidationException> is thrown when parameters of the
request are not valid.


=head2 CreateServer(InstanceProfileArn => Str, InstanceType => Str, ServerName => Str, ServiceRoleArn => Str, [AssociatePublicIpAddress => Bool, BackupId => Str, BackupRetentionCount => Int, DisableAutomatedBackup => Bool, Engine => Str, EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>], EngineModel => Str, EngineVersion => Str, KeyPair => Str, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str, SecurityGroupIds => ArrayRef[Str|Undef], SubnetIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::OpsWorksCM::CreateServer>

Returns: a L<Paws::OpsWorksCM::CreateServerResponse> instance

  Creates and immedately starts a new server. The server is ready to use
when it is in the C<HEALTHY> state. By default, you can create a
maximum of 10 servers.

This operation is asynchronous.

A C<LimitExceededException> is thrown when you have created the maximum
number of servers (10). A C<ResourceAlreadyExistsException> is thrown
when a server with the same name already exists in the account. A
C<ResourceNotFoundException> is thrown when you specify a backup ID
that is not valid or is for a backup that does not exist. A
C<ValidationException> is thrown when parameters of the request are not
valid.

If you do not specify a security group by adding the
C<SecurityGroupIds> parameter, AWS OpsWorks creates a new security
group. The default security group opens the Chef server to the world on
TCP port 443. If a KeyName is present, AWS OpsWorks enables SSH access.
SSH is also open to the world on TCP port 22.

By default, the Chef Server is accessible from any IP address. We
recommend that you update your security group rules to allow access
from known IP addresses and address ranges only. To edit security group
rules, open Security Groups in the navigation pane of the EC2
management console.


=head2 DeleteBackup(BackupId => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteBackup>

Returns: a L<Paws::OpsWorksCM::DeleteBackupResponse> instance

  Deletes a backup. You can delete both manual and automated backups.
This operation is asynchronous.

An C<InvalidStateException> is thrown when a backup deletion is already
in progress. A C<ResourceNotFoundException> is thrown when the backup
does not exist. A C<ValidationException> is thrown when parameters of
the request are not valid.


=head2 DeleteServer(ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DeleteServer>

Returns: a L<Paws::OpsWorksCM::DeleteServerResponse> instance

  Deletes the server and the underlying AWS CloudFormation stack
(including the server's EC2 instance). When you run this command, the
server state is updated to C<DELETING>. After the server is deleted, it
is no longer returned by C<DescribeServer> requests. If the AWS
CloudFormation stack cannot be deleted, the server cannot be deleted.

This operation is asynchronous.

An C<InvalidStateException> is thrown when a server deletion is already
in progress. A C<ResourceNotFoundException> is thrown when the server
does not exist. A C<ValidationException> is raised when parameters of
the request are not valid.


=head2 DescribeAccountAttributes()

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeAccountAttributes>

Returns: a L<Paws::OpsWorksCM::DescribeAccountAttributesResponse> instance

  Describes your account attributes, and creates requests to increase
limits before they are reached or exceeded.

This operation is synchronous.


=head2 DescribeBackups([BackupId => Str, MaxResults => Int, NextToken => Str, ServerName => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeBackups>

Returns: a L<Paws::OpsWorksCM::DescribeBackupsResponse> instance

  Describes backups. The results are ordered by time, with newest backups
first. If you do not specify a BackupId or ServerName, the command
returns all backups.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the backup does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DescribeEvents(ServerName => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeEvents>

Returns: a L<Paws::OpsWorksCM::DescribeEventsResponse> instance

  Describes events for a specified server. Results are ordered by time,
with newest events first.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DescribeNodeAssociationStatus(NodeAssociationStatusToken => Str, ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeNodeAssociationStatus>

Returns: a L<Paws::OpsWorksCM::DescribeNodeAssociationStatusResponse> instance

  Returns the current status of an existing association or disassociation
request.

A C<ResourceNotFoundException> is thrown when no recent association or
disassociation request with the specified token is found, or when the
server does not exist. A C<ValidationException> is raised when
parameters of the request are not valid.


=head2 DescribeServers([MaxResults => Int, NextToken => Str, ServerName => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::DescribeServers>

Returns: a L<Paws::OpsWorksCM::DescribeServersResponse> instance

  Lists all configuration management servers that are identified with
your account. Only the stored results from Amazon DynamoDB are
returned. AWS OpsWorks for Chef Automate does not query other services.

This operation is synchronous.

A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 DisassociateNode(NodeName => Str, ServerName => Str, [EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]])

Each argument is described in detail in: L<Paws::OpsWorksCM::DisassociateNode>

Returns: a L<Paws::OpsWorksCM::DisassociateNodeResponse> instance

  Disassociates a node from a Chef server, and removes the node from the
Chef server's managed nodes. After a node is disassociated, the node
key pair is no longer valid for accessing the Chef API. For more
information about how to associate a node, see AssociateNode.

A node can can only be disassociated from a server that is in a
C<HEALTHY> state. Otherwise, an C<InvalidStateException> is thrown. A
C<ResourceNotFoundException> is thrown when the server does not exist.
A C<ValidationException> is raised when parameters of the request are
not valid.


=head2 RestoreServer(BackupId => Str, ServerName => Str, [InstanceType => Str, KeyPair => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::RestoreServer>

Returns: a L<Paws::OpsWorksCM::RestoreServerResponse> instance

  Restores a backup to a server that is in a C<CONNECTION_LOST>,
C<HEALTHY>, C<RUNNING>, C<UNHEALTHY>, or C<TERMINATED> state. When you
run RestoreServer, the server's EC2 instance is deleted, and a new EC2
instance is configured. RestoreServer maintains the existing server
endpoint, so configuration management of the server's client devices
(nodes) should continue to work.

This operation is asynchronous.

An C<InvalidStateException> is thrown when the server is not in a valid
state. A C<ResourceNotFoundException> is thrown when the server does
not exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 StartMaintenance(ServerName => Str)

Each argument is described in detail in: L<Paws::OpsWorksCM::StartMaintenance>

Returns: a L<Paws::OpsWorksCM::StartMaintenanceResponse> instance

  Manually starts server maintenance. This command can be useful if an
earlier maintenance attempt failed, and the underlying cause of
maintenance failure has been resolved. The server is in an
C<UNDER_MAINTENANCE> state while maintenance is in progress.

Maintenance can only be started on servers in C<HEALTHY> and
C<UNHEALTHY> states. Otherwise, an C<InvalidStateException> is thrown.
A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.


=head2 UpdateServer(ServerName => Str, [BackupRetentionCount => Int, DisableAutomatedBackup => Bool, PreferredBackupWindow => Str, PreferredMaintenanceWindow => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServer>

Returns: a L<Paws::OpsWorksCM::UpdateServerResponse> instance

  Updates settings for a server.

This operation is synchronous.


=head2 UpdateServerEngineAttributes(AttributeName => Str, ServerName => Str, [AttributeValue => Str])

Each argument is described in detail in: L<Paws::OpsWorksCM::UpdateServerEngineAttributes>

Returns: a L<Paws::OpsWorksCM::UpdateServerEngineAttributesResponse> instance

  Updates engine-specific attributes on a specified server. The server
enters the C<MODIFYING> state when this operation is in progress. Only
one update can occur at a time. You can use this command to reset the
Chef server's private key (C<CHEF_PIVOTAL_KEY>).

This operation is asynchronous.

This operation can only be called for servers in C<HEALTHY> or
C<UNHEALTHY> states. Otherwise, an C<InvalidStateException> is raised.
A C<ResourceNotFoundException> is thrown when the server does not
exist. A C<ValidationException> is raised when parameters of the
request are not valid.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results




=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

