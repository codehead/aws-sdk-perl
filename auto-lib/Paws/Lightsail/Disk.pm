package Paws::Lightsail::Disk;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has AttachedTo => (is => 'ro', isa => 'Str', request_name => 'attachedTo', traits => ['NameInRequest']);
  has AttachmentState => (is => 'ro', isa => 'Str', request_name => 'attachmentState', traits => ['NameInRequest']);
  has CreatedAt => (is => 'ro', isa => 'Str', request_name => 'createdAt', traits => ['NameInRequest']);
  has GbInUse => (is => 'ro', isa => 'Int', request_name => 'gbInUse', traits => ['NameInRequest']);
  has Iops => (is => 'ro', isa => 'Int', request_name => 'iops', traits => ['NameInRequest']);
  has IsAttached => (is => 'ro', isa => 'Bool', request_name => 'isAttached', traits => ['NameInRequest']);
  has IsSystemDisk => (is => 'ro', isa => 'Bool', request_name => 'isSystemDisk', traits => ['NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::Lightsail::ResourceLocation', request_name => 'location', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Path => (is => 'ro', isa => 'Str', request_name => 'path', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SizeInGb => (is => 'ro', isa => 'Int', request_name => 'sizeInGb', traits => ['NameInRequest']);
  has SupportCode => (is => 'ro', isa => 'Str', request_name => 'supportCode', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::Disk

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Lightsail::Disk object:

  $service_obj->Method(Att1 => { Arn => $value, ..., SupportCode => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Lightsail::Disk object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Describes the hard disk (an SSD).

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the disk.


=head2 AttachedTo => Str

  The resources to which the disk is attached.


=head2 AttachmentState => Str

  The attachment state of the disk.


=head2 CreatedAt => Str

  The date when the disk was created.


=head2 GbInUse => Int

  The number of GB in use by the disk.


=head2 Iops => Int

  The input/output operations per second (IOPS) of the disk.


=head2 IsAttached => Bool

  A Boolean value indicating whether the disk is attached.


=head2 IsSystemDisk => Bool

  A Boolean value indicating whether this disk is a system disk (has an
operating system loaded on it).


=head2 Location => L<Paws::Lightsail::ResourceLocation>

  The region and Availability Zone where the disk is located.


=head2 Name => Str

  The name of the disk.


=head2 Path => Str

  The disk path.


=head2 ResourceType => Str

  The resource type of the disk.


=head2 SizeInGb => Int

  The size of the disk in GB.


=head2 SupportCode => Str

  The support code. Include this code in your email to support when you
have questions about an instance or another resource in Lightsail. This
code enables our support team to look up your Lightsail information
more easily.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

