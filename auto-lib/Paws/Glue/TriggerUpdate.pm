package Paws::Glue::TriggerUpdate;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Glue::Action]');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Predicate => (is => 'ro', isa => 'Paws::Glue::Predicate');
  has Schedule => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::TriggerUpdate

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::TriggerUpdate object:

  $service_obj->Method(Att1 => { Actions => $value, ..., Schedule => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::TriggerUpdate object:

  $result = $service_obj->Method(...);
  $result->Att1->Actions

=head1 DESCRIPTION

A structure used to provide information used to updata a trigger.

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::Glue::Action>]

  The actions initiated by this trigger.


=head2 Description => Str

  A description of this trigger.


=head2 Name => Str

  The name of the trigger.


=head2 Predicate => L<Paws::Glue::Predicate>

  The predicate of this trigger, which defines when it will fire.


=head2 Schedule => Str

  A cron expression specifying the schedule.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

