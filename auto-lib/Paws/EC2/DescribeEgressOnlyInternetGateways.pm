
package Paws::EC2::DescribeEgressOnlyInternetGateways;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has EgressOnlyInternetGatewayIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'EgressOnlyInternetGatewayId' );
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEgressOnlyInternetGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeEgressOnlyInternetGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeEgressOnlyInternetGateways - Arguments for method DescribeEgressOnlyInternetGateways on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEgressOnlyInternetGateways on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeEgressOnlyInternetGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEgressOnlyInternetGateways.

As an example:

  $service_obj->DescribeEgressOnlyInternetGateways(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef]

One or more egress-only Internet gateway IDs.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<NextToken> value. This value can be between 5 and 1000;
if C<MaxResults> is given a value larger than 1000, only 1000 results
are returned.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEgressOnlyInternetGateways in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

