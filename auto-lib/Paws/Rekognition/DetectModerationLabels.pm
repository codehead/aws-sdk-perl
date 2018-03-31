
package Paws::Rekognition::DetectModerationLabels;
  use Moose;
  has Image => (is => 'ro', isa => 'Paws::Rekognition::Image', required => 1);
  has MinConfidence => (is => 'ro', isa => 'Num');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DetectModerationLabels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::DetectModerationLabelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabels - Arguments for method DetectModerationLabels on Paws::Rekognition

=head1 DESCRIPTION

This class represents the parameters used for calling the method DetectModerationLabels on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method DetectModerationLabels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DetectModerationLabels.

As an example:

  $service_obj->DetectModerationLabels(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Image => L<Paws::Rekognition::Image>

The input image as bytes or an S3 object.



=head2 MinConfidence => Num

Specifies the minimum confidence level for the labels to return. Amazon
Rekognition doesn't return any labels with a confidence level lower
than this specified value.

If you don't specify C<MinConfidence>, the operation returns labels
with confidence values greater than or equal to 50 percent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DetectModerationLabels in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

