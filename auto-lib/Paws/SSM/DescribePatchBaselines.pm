
package Paws::SSM::DescribePatchBaselines;
  use Moose;
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::PatchOrchestratorFilter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribePatchBaselines');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::DescribePatchBaselinesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribePatchBaselines - Arguments for method DescribePatchBaselines on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribePatchBaselines on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method DescribePatchBaselines.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribePatchBaselines.

As an example:

  $service_obj->DescribePatchBaselines(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>]

Each element in the array is a structure containing:

Key: (string, "NAME_PREFIX" or "OWNER")

Value: (array of strings, exactly 1 entry, between 1 and 255
characters)



=head2 MaxResults => Int

The maximum number of patch baselines to return (per page).



=head2 NextToken => Str

The token for the next set of items to return. (You received this token
from a previous call.)




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribePatchBaselines in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

