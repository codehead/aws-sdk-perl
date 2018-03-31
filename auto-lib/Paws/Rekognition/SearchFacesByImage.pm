
package Paws::Rekognition::SearchFacesByImage;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', required => 1);
  has FaceMatchThreshold => (is => 'ro', isa => 'Num');
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MaxFaces => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchFacesByImage');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::SearchFacesByImageResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::SearchFacesByImage - Arguments for method SearchFacesByImage on Paws::Rekognition

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchFacesByImage on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method SearchFacesByImage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchFacesByImage.

As an example:

  $service_obj->SearchFacesByImage(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

ID of the collection to search.



=head2 FaceMatchThreshold => Num

(Optional) Specifies the minimum confidence in the face match to
return. For example, don't return any matches where confidence in
matches is less than 70%.



=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as bytes or an S3 object.



=head2 MaxFaces => Int

Maximum number of faces to return. The operation returns the maximum
number of faces with the highest confidence in the match.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchFacesByImage in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

