package Paws::EMR::ClusterTimeline;
  use Moose;
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has ReadyDateTime => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ClusterTimeline

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EMR::ClusterTimeline object:

  $service_obj->Method(Att1 => { CreationDateTime => $value, ..., ReadyDateTime => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EMR::ClusterTimeline object:

  $result = $service_obj->Method(...);
  $result->Att1->CreationDateTime

=head1 DESCRIPTION

Represents the timeline of the cluster's lifecycle.

=head1 ATTRIBUTES


=head2 CreationDateTime => Str

  The creation date and time of the cluster.


=head2 EndDateTime => Str

  The date and time when the cluster was terminated.


=head2 ReadyDateTime => Str

  The date and time when the cluster was ready to execute steps.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

