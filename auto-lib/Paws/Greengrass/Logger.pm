package Paws::Greengrass::Logger;
  use Moose;
  has Component => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Level => (is => 'ro', isa => 'Str');
  has Space => (is => 'ro', isa => 'Int');
  has Type => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::Logger

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::Logger object:

  $service_obj->Method(Att1 => { Component => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::Logger object:

  $result = $service_obj->Method(...);
  $result->Att1->Component

=head1 DESCRIPTION

Information on the Logger

=head1 ATTRIBUTES


=head2 Component => Str

  The component that will be subject to logs


=head2 Id => Str

  Element Id for this entry in the list.


=head2 Level => Str

  The level of the logs


=head2 Space => Int

  Amount of hardware space, in KB, to use if file system is used for
logging purposes.


=head2 Type => Str

  The type which will be use for log output



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

