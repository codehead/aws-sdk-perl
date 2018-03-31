package Paws::Pinpoint::SegmentImportResource;
  use Moose;
  has ChannelCounts => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__integer');
  has ExternalId => (is => 'ro', isa => 'Str');
  has Format => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has S3Url => (is => 'ro', isa => 'Str');
  has Size => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SegmentImportResource

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SegmentImportResource object:

  $service_obj->Method(Att1 => { ChannelCounts => $value, ..., Size => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SegmentImportResource object:

  $result = $service_obj->Method(...);
  $result->Att1->ChannelCounts

=head1 DESCRIPTION

Segment import definition.

=head1 ATTRIBUTES


=head2 ChannelCounts => L<Paws::Pinpoint::MapOf__integer>

  Channel type counts


=head2 ExternalId => Str

  A unique, custom ID assigned to the IAM role that restricts who can
assume the role.


=head2 Format => Str

  The format of the endpoint files that were imported to create this
segment. Valid values: CSV, JSON


=head2 RoleArn => Str

  The Amazon Resource Name (ARN) of an IAM role that grants Amazon
Pinpoint access to the endpoints in Amazon S3.


=head2 S3Url => Str

  A URL that points to the Amazon S3 location from which the endpoints
for this segment were imported.


=head2 Size => Int

  The number of endpoints that were successfully imported to create this
segment.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

