
package Paws::CloudFormation::ListStackSets;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStackSets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::ListStackSetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListStackSetsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::ListStackSets - Arguments for method ListStackSets on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStackSets on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method ListStackSets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStackSets.

As an example:

  $service_obj->ListStackSets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

If the previous paginated request didn't return all of the remaining
results, the response object's C<NextToken> parameter value is set to a
token. To retrieve the next set of results, call C<ListStackSets> again
and assign that token to the request object's C<NextToken> parameter.
If there are no remaining results, the previous response object's
C<NextToken> parameter is set to C<null>.



=head2 Status => Str

The status of the stack sets that you want to get summary information
about.

Valid values are: C<"ACTIVE">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStackSets in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

