
package Paws::OpsWorksCM::DescribeServers;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ServerName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeServers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DescribeServersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DescribeServers - Arguments for method DescribeServers on Paws::OpsWorksCM

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeServers on the 
AWS OpsWorks for Chef Automate service. Use the attributes of this class
as arguments to method DescribeServers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeServers.

As an example:

  $service_obj->DescribeServers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

To receive a paginated response, use this parameter to specify the
maximum number of results to be returned with a single call. If the
number of available results exceeds this maximum, the response includes
a C<NextToken> value that you can assign to the C<NextToken> request
parameter to get the next set of results.



=head2 NextToken => Str

NextToken is a string that is returned in some command responses. It
indicates that not all entries have been returned, and that you must
run at least one more request to get remaining items. To get remaining
results, call C<DescribeServers> again, and assign the token from the
previous results as the value of the C<nextToken> parameter. If there
are no more results, the response object's C<nextToken> parameter value
is C<null>. Setting a C<nextToken> value that was not returned in your
previous results causes an C<InvalidNextTokenException> to occur.



=head2 ServerName => Str

Describes the server with the specified ServerName.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeServers in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

