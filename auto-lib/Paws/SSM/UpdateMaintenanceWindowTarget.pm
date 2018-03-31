
package Paws::SSM::UpdateMaintenanceWindowTarget;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has OwnerInformation => (is => 'ro', isa => 'Str');
  has Replace => (is => 'ro', isa => 'Bool');
  has Targets => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Target]');
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTargetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMaintenanceWindowTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::UpdateMaintenanceWindowTargetResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::UpdateMaintenanceWindowTarget - Arguments for method UpdateMaintenanceWindowTarget on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMaintenanceWindowTarget on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method UpdateMaintenanceWindowTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMaintenanceWindowTarget.

As an example:

  $service_obj->UpdateMaintenanceWindowTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the update.



=head2 Name => Str

A name for the update.



=head2 OwnerInformation => Str

User-provided value that will be included in any CloudWatch events
raised while running tasks for these targets in this Maintenance
Window.



=head2 Replace => Bool

If True, then all fields that are required by the
RegisterTargetWithMaintenanceWindow action are also required for this
API request. Optional fields that are not specified are set to null.



=head2 Targets => ArrayRef[L<Paws::SSM::Target>]

The targets to add or replace.



=head2 B<REQUIRED> WindowId => Str

The Maintenance Window ID with which to modify the target.



=head2 B<REQUIRED> WindowTargetId => Str

The target ID to modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMaintenanceWindowTarget in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

