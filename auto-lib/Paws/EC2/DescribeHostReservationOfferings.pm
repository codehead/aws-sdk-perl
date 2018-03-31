
package Paws::EC2::DescribeHostReservationOfferings;
  use Moose;
  has Filter => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]');
  has MaxDuration => (is => 'ro', isa => 'Int');
  has MaxResults => (is => 'ro', isa => 'Int');
  has MinDuration => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has OfferingId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHostReservationOfferings');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeHostReservationOfferingsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeHostReservationOfferings - Arguments for method DescribeHostReservationOfferings on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeHostReservationOfferings on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeHostReservationOfferings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeHostReservationOfferings.

As an example:

  $service_obj->DescribeHostReservationOfferings(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Filter => ArrayRef[L<Paws::EC2::Filter>]

One or more filters.

=over

=item *

C<instance-family> - The instance family of the offering (e.g., C<m4>).

=item *

C<payment-option> - The payment option (C<NoUpfront> |
C<PartialUpfront> | C<AllUpfront>).

=back




=head2 MaxDuration => Int

This is the maximum duration of the reservation you'd like to purchase,
specified in seconds. Reservations are available in one-year and
three-year terms. The number of seconds specified must be the number of
seconds in a year (365x24x60x60) times one of the supported durations
(1 or 3). For example, specify 94608000 for three years.



=head2 MaxResults => Int

The maximum number of results to return for the request in a single
page. The remaining results can be seen by sending another request with
the returned C<nextToken> value. This value can be between 5 and 500;
if C<maxResults> is given a larger value than 500, you will receive an
error.



=head2 MinDuration => Int

This is the minimum duration of the reservation you'd like to purchase,
specified in seconds. Reservations are available in one-year and
three-year terms. The number of seconds specified must be the number of
seconds in a year (365x24x60x60) times one of the supported durations
(1 or 3). For example, specify 31536000 for one year.



=head2 NextToken => Str

The token to use to retrieve the next page of results.



=head2 OfferingId => Str

The ID of the reservation offering.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeHostReservationOfferings in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

