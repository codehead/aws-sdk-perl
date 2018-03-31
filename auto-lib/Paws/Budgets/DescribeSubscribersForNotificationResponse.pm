
package Paws::Budgets::DescribeSubscribersForNotificationResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Subscribers => (is => 'ro', isa => 'ArrayRef[Paws::Budgets::Subscriber]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Budgets::DescribeSubscribersForNotificationResponse

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 Subscribers => ArrayRef[L<Paws::Budgets::Subscriber>]




=head2 _request_id => Str


=cut

1;