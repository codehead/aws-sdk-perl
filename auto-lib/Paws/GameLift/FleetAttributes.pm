package Paws::GameLift::FleetAttributes;
  use Moose;
  has BuildId => (is => 'ro', isa => 'Str');
  has CreationTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has FleetArn => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str');
  has LogPaths => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MetricGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str');
  has NewGameSessionProtectionPolicy => (is => 'ro', isa => 'Str');
  has OperatingSystem => (is => 'ro', isa => 'Str');
  has ResourceCreationLimitPolicy => (is => 'ro', isa => 'Paws::GameLift::ResourceCreationLimitPolicy');
  has ServerLaunchParameters => (is => 'ro', isa => 'Str');
  has ServerLaunchPath => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TerminationTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::FleetAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::FleetAttributes object:

  $service_obj->Method(Att1 => { BuildId => $value, ..., TerminationTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::FleetAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->BuildId

=head1 DESCRIPTION

General properties describing a fleet.

Fleet-related operations include:

=over

=item *

CreateFleet

=item *

ListFleets

=item *

Describe fleets:

=over

=item *

DescribeFleetAttributes

=item *

DescribeFleetPortSettings

=item *

DescribeFleetUtilization

=item *

DescribeRuntimeConfiguration

=item *

DescribeFleetEvents

=back

=item *

Update fleets:

=over

=item *

UpdateFleetAttributes

=item *

UpdateFleetCapacity

=item *

UpdateFleetPortSettings

=item *

UpdateRuntimeConfiguration

=back

=item *

Manage fleet capacity:

=over

=item *

DescribeFleetCapacity

=item *

UpdateFleetCapacity

=item *

PutScalingPolicy (automatic scaling)

=item *

DescribeScalingPolicies (automatic scaling)

=item *

DeleteScalingPolicy (automatic scaling)

=item *

DescribeEC2InstanceLimits

=back

=item *

DeleteFleet

=back


=head1 ATTRIBUTES


=head2 BuildId => Str

  Unique identifier for a build.


=head2 CreationTime => Str

  Time stamp indicating when this data object was created. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").


=head2 Description => Str

  Human-readable description of the fleet.


=head2 FleetArn => Str

  Identifier for a fleet that is unique across all regions.


=head2 FleetId => Str

  Unique identifier for a fleet.


=head2 LogPaths => ArrayRef[Str|Undef]

  Location of default log files. When a server process is shut down,
Amazon GameLift captures and stores any log files in this location.
These logs are in addition to game session logs; see more on game
session logs in the Amazon GameLift Developer Guide. If no default log
path for a fleet is specified, Amazon GameLift automatically uploads
logs that are stored on each instance at C<C:\game\logs> (for Windows)
or C</local/game/logs> (for Linux). Use the Amazon GameLift console to
access stored logs.


=head2 MetricGroups => ArrayRef[Str|Undef]

  Names of metric groups that this fleet is included in. In Amazon
CloudWatch, you can view metrics for an individual fleet or aggregated
metrics for fleets that are in a fleet metric group. A fleet can be
included in only one metric group at a time.


=head2 Name => Str

  Descriptive label that is associated with a fleet. Fleet names do not
need to be unique.


=head2 NewGameSessionProtectionPolicy => Str

  Type of game session protection to set for all new instances started in
the fleet.

=over

=item *

B<NoProtection> -- The game session can be terminated during a
scale-down event.

=item *

B<FullProtection> -- If the game session is in an C<ACTIVE> status, it
cannot be terminated during a scale-down event.

=back



=head2 OperatingSystem => Str

  Operating system of the fleet's computing resources. A fleet's
operating system depends on the OS specified for the build that is
deployed on this fleet.


=head2 ResourceCreationLimitPolicy => L<Paws::GameLift::ResourceCreationLimitPolicy>

  Fleet policy to limit the number of game sessions an individual player
can create over a span of time.


=head2 ServerLaunchParameters => Str

  Game server launch parameters specified for fleets created before
2016-08-04 (or AWS SDK v. 0.12.16). Server launch parameters for fleets
created after this date are specified in the fleet's
RuntimeConfiguration.


=head2 ServerLaunchPath => Str

  Path to a game server executable in the fleet's build, specified for
fleets created before 2016-08-04 (or AWS SDK v. 0.12.16). Server launch
paths for fleets created after this date are specified in the fleet's
RuntimeConfiguration.


=head2 Status => Str

  Current status of the fleet.

Possible fleet statuses include the following:

=over

=item *

B<NEW> -- A new fleet has been defined and desired instances is set to
1.

=item *

B<DOWNLOADING/VALIDATING/BUILDING/ACTIVATING> -- Amazon GameLift is
setting up the new fleet, creating new instances with the game build
and starting server processes.

=item *

B<ACTIVE> -- Hosts can now accept game sessions.

=item *

B<ERROR> -- An error occurred when downloading, validating, building,
or activating the fleet.

=item *

B<DELETING> -- Hosts are responding to a delete fleet request.

=item *

B<TERMINATED> -- The fleet no longer exists.

=back



=head2 TerminationTime => Str

  Time stamp indicating when this data object was terminated. Format is a
number expressed in Unix time as milliseconds (for example
"1469498468.057").



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

