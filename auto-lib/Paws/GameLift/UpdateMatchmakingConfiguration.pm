
package Paws::GameLift::UpdateMatchmakingConfiguration;
  use Moose;
  has AcceptanceRequired => (is => 'ro', isa => 'Bool');
  has AcceptanceTimeoutSeconds => (is => 'ro', isa => 'Int');
  has AdditionalPlayerCount => (is => 'ro', isa => 'Int');
  has CustomEventData => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has GameProperties => (is => 'ro', isa => 'ArrayRef[Paws::GameLift::GameProperty]');
  has GameSessionData => (is => 'ro', isa => 'Str');
  has GameSessionQueueArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotificationTarget => (is => 'ro', isa => 'Str');
  has RequestTimeoutSeconds => (is => 'ro', isa => 'Int');
  has RuleSetName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateMatchmakingConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::UpdateMatchmakingConfigurationOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::UpdateMatchmakingConfiguration - Arguments for method UpdateMatchmakingConfiguration on Paws::GameLift

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateMatchmakingConfiguration on the 
Amazon GameLift service. Use the attributes of this class
as arguments to method UpdateMatchmakingConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateMatchmakingConfiguration.

As an example:

  $service_obj->UpdateMatchmakingConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptanceRequired => Bool

Flag that determines whether or not a match that was created with this
configuration must be accepted by the matched players. To require
acceptance, set to TRUE.



=head2 AcceptanceTimeoutSeconds => Int

Length of time (in seconds) to wait for players to accept a proposed
match. If any player rejects the match or fails to accept before the
timeout, the ticket continues to look for an acceptable match.



=head2 AdditionalPlayerCount => Int

Number of player slots in a match to keep open for future players. For
example, if the configuration's rule set specifies a match for a single
12-person team, and the additional player count is set to 2, only 10
players are selected for the match.



=head2 CustomEventData => Str

Information to attached to all events related to the matchmaking
configuration.



=head2 Description => Str

Descriptive label that is associated with matchmaking configuration.



=head2 GameProperties => ArrayRef[L<Paws::GameLift::GameProperty>]

Set of developer-defined properties for a game session, formatted as a
set of type:value pairs. These properties are included in the
GameSession object, which is passed to the game server with a request
to start a new game session (see Start a Game Session). This
information is added to the new GameSession object that is created for
a successful match.



=head2 GameSessionData => Str

Set of developer-defined game session properties, formatted as a single
string value. This data is included in the GameSession object, which is
passed to the game server with a request to start a new game session
(see Start a Game Session). This information is added to the new
GameSession object that is created for a successful match.



=head2 GameSessionQueueArns => ArrayRef[Str|Undef]

Amazon Resource Name (ARN) that is assigned to a game session queue and
uniquely identifies it. Format is
C<arn:aws:gamelift:E<lt>regionE<gt>::fleet/fleet-a1234567-b8c9-0d1e-2fa3-b45c6d7e8912>.
These queues are used when placing game sessions for matches that are
created with this matchmaking configuration. Queues can be located in
any region.



=head2 B<REQUIRED> Name => Str

Unique identifier for a matchmaking configuration to update.



=head2 NotificationTarget => Str

SNS topic ARN that is set up to receive matchmaking notifications. See
Setting up Notifications for Matchmaking for more information.



=head2 RequestTimeoutSeconds => Int

Maximum duration, in seconds, that a matchmaking ticket can remain in
process before timing out. Requests that time out can be resubmitted as
needed.



=head2 RuleSetName => Str

Unique identifier for a matchmaking rule set to use with this
configuration. A matchmaking configuration can only use rule sets that
are defined in the same region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateMatchmakingConfiguration in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

