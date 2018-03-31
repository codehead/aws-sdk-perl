package Paws::SSM::MaintenanceWindowIdentity;
  use Moose;
  has Cutoff => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has Duration => (is => 'ro', isa => 'Int');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Name => (is => 'ro', isa => 'Str');
  has WindowId => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowIdentity

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowIdentity object:

  $service_obj->Method(Att1 => { Cutoff => $value, ..., WindowId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowIdentity object:

  $result = $service_obj->Method(...);
  $result->Att1->Cutoff

=head1 DESCRIPTION

Information about the Maintenance Window.

=head1 ATTRIBUTES


=head2 Cutoff => Int

  The number of hours before the end of the Maintenance Window that
Systems Manager stops scheduling new tasks for execution.


=head2 Description => Str

  A description of the Maintenance Window.


=head2 Duration => Int

  The duration of the Maintenance Window in hours.


=head2 Enabled => Bool

  Whether the Maintenance Window is enabled.


=head2 Name => Str

  The name of the Maintenance Window.


=head2 WindowId => Str

  The ID of the Maintenance Window.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

