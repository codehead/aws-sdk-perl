
package Paws::Inspector::UpdateAssessmentTarget;
  use Moose;
  has AssessmentTargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetArn' , required => 1);
  has AssessmentTargetName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentTargetName' , required => 1);
  has ResourceGroupArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGroupArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAssessmentTarget');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::UpdateAssessmentTarget - Arguments for method UpdateAssessmentTarget on Paws::Inspector

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAssessmentTarget on the 
Amazon Inspector service. Use the attributes of this class
as arguments to method UpdateAssessmentTarget.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAssessmentTarget.

As an example:

  $service_obj->UpdateAssessmentTarget(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentTargetArn => Str

The ARN of the assessment target that you want to update.



=head2 B<REQUIRED> AssessmentTargetName => Str

The name of the assessment target that you want to update.



=head2 B<REQUIRED> ResourceGroupArn => Str

The ARN of the resource group that is used to specify the new resource
group to associate with the assessment target.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAssessmentTarget in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

