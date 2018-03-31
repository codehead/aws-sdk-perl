
package Paws::EMR::CancelSteps;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str');
  has StepIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelSteps');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::CancelStepsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::CancelSteps - Arguments for method CancelSteps on Paws::EMR

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelSteps on the 
Amazon Elastic MapReduce service. Use the attributes of this class
as arguments to method CancelSteps.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelSteps.

As an example:

  $service_obj->CancelSteps(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClusterId => Str

The C<ClusterID> for which specified steps will be canceled. Use
RunJobFlow and ListClusters to get ClusterIDs.



=head2 StepIds => ArrayRef[Str|Undef]

The list of C<StepIDs> to cancel. Use ListSteps to get steps and their
states for the specified cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelSteps in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

