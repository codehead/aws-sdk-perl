
package Paws::SSM::DeregisterTargetFromMaintenanceWindow;
  use Moose;
  has Safe => (is => 'ro', isa => 'Bool');
  has WindowId => (is => 'ro', isa => 'Str', required => 1);
  has WindowTargetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterTargetFromMaintenanceWindow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DeregisterTargetFromMaintenanceWindowResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DeregisterTargetFromMaintenanceWindow - Arguments for method DeregisterTargetFromMaintenanceWindow on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterTargetFromMaintenanceWindow on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method DeregisterTargetFromMaintenanceWindow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterTargetFromMaintenanceWindow.

As an example:

  $service_obj->DeregisterTargetFromMaintenanceWindow(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Safe => Bool

The system checks if the target is being referenced by a task. If the
target is being referenced, the system returns an error and does not
deregister the target from the Maintenance Window.



=head2 B<REQUIRED> WindowId => Str

The ID of the Maintenance Window the target should be removed from.



=head2 B<REQUIRED> WindowTargetId => Str

The ID of the target definition to remove.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterTargetFromMaintenanceWindow in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

