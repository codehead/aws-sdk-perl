
package Paws::EC2::DescribeNatGateways;
  use Moose;
  has Filter => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NatGatewayIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'NatGatewayId' );
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeNatGateways');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeNatGatewaysResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNatGateways - Arguments for method DescribeNatGateways on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeNatGateways on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeNatGateways.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeNatGateways.

As an example:

  $service_obj->DescribeNatGateways(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<nat-gateway-id> - The ID of the NAT gateway.

=item *

C<state> - The state of the NAT gateway (C<pending> | C<failed> |
C<available> | C<deleting> | C<deleted>).

=item *

C<subnet-id> - The ID of the subnet in which the NAT gateway resides.

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource. Specify the key of the tag in the filter name and the
value of the tag in the filter value. For example, for the tag
Purpose=X, specify C<tag:Purpose> for the filter name and C<X> for the
filter value.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of what the tag's key
is). If you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=item *

C<tag-value> - The value of a tag assigned to the resource. This filter
is independent of the C<tag-key> filter.

=item *

C<vpc-id> - The ID of the VPC in which the NAT gateway resides.

=back




=head2 MaxResults => Int

The maximum number of items to return for this request. The request
returns a token that you can specify in a subsequent call to get the
next set of results.

Constraint: If the value specified is greater than 1000, we return only
1000 items.



=head2 NatGatewayIds => ArrayRef[Str|Undef]

One or more NAT gateway IDs.



=head2 NextToken => Str

The token to retrieve the next page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeNatGateways in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

