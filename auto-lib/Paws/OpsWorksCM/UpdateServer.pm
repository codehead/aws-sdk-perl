
package Paws::OpsWorksCM::UpdateServer;
  use Moose;
  has BackupRetentionCount => (is => 'ro', isa => 'Int');
  has DisableAutomatedBackup => (is => 'ro', isa => 'Bool');
  has PreferredBackupWindow => (is => 'ro', isa => 'Str');
  has PreferredMaintenanceWindow => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::UpdateServerResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::UpdateServer - Arguments for method UpdateServer on Paws::OpsWorksCM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServer on the 
AWS OpsWorks for Chef Automate service. Use the attributes of this class
as arguments to method UpdateServer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServer.

As an example:

  $service_obj->UpdateServer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 BackupRetentionCount => Int

Sets the number of automated backups that you want to keep.



=head2 DisableAutomatedBackup => Bool

Setting DisableAutomatedBackup to C<true> disables automated or
scheduled backups. Automated backups are enabled by default.



=head2 PreferredBackupWindow => Str





=head2 PreferredMaintenanceWindow => Str





=head2 B<REQUIRED> ServerName => Str

The name of the server to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServer in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

