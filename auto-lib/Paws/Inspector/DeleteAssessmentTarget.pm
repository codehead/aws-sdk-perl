
package Paws::Inspector::DeleteAssessmentTarget;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAssessmentTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::DeleteAssessmentTarget - Arguments for method DeleteAssessmentTarget on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAssessmentTarget on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method DeleteAssessmentTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAssessmentTarget.

As an example:

  $service_obj->DeleteAssessmentTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN that specifies the assessment target that you want to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAssessmentTarget in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

