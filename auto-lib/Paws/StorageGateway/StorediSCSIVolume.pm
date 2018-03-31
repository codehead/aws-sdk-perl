package Paws::StorageGateway::StorediSCSIVolume;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has PreservedExistingData => (is => 'ro', isa => 'Bool');
  has SourceSnapshotId => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');
  has VolumeDiskId => (is => 'ro', isa => 'Str');
  has VolumeId => (is => 'ro', isa => 'Str');
  has VolumeiSCSIAttributes => (is => 'ro', isa => 'Paws::StorageGateway::VolumeiSCSIAttributes');
  has VolumeProgress => (is => 'ro', isa => 'Num');
  has VolumeSizeInBytes => (is => 'ro', isa => 'Int');
  has VolumeStatus => (is => 'ro', isa => 'Str');
  has VolumeType => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::StorediSCSIVolume

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::StorediSCSIVolume object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., VolumeType => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::StorediSCSIVolume object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Describes an iSCSI stored volume.

=head1 ATTRIBUTES


=head2 CreatedDate => Str

  The date the volume was created. Volumes created prior to March 28,
2017 donE<rsquo>t have this time stamp.


=head2 PreservedExistingData => Bool

  Indicates if when the stored volume was created, existing data on the
underlying local disk was preserved.

Valid Values: true, false


=head2 SourceSnapshotId => Str

  If the stored volume was created from a snapshot, this field contains
the snapshot ID used, e.g. snap-78e22663. Otherwise, this field is not
included.


=head2 VolumeARN => Str

  The Amazon Resource Name (ARN) of the storage volume.


=head2 VolumeDiskId => Str

  The ID of the local disk that was specified in the
CreateStorediSCSIVolume operation.


=head2 VolumeId => Str

  The unique identifier of the volume, e.g. vol-AE4B946D.


=head2 VolumeiSCSIAttributes => L<Paws::StorageGateway::VolumeiSCSIAttributes>

  An VolumeiSCSIAttributes object that represents a collection of iSCSI
attributes for one stored volume.


=head2 VolumeProgress => Num

  Represents the percentage complete if the volume is restoring or
bootstrapping that represents the percent of data transferred. This
field does not appear in the response if the stored volume is not
restoring or bootstrapping.


=head2 VolumeSizeInBytes => Int

  The size of the volume in bytes.


=head2 VolumeStatus => Str

  One of the VolumeStatus values that indicates the state of the storage
volume.


=head2 VolumeType => Str

  One of the VolumeType enumeration values describing the type of the
volume.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

