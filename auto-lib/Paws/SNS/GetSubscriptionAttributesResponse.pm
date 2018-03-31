
package Paws::SNS::GetSubscriptionAttributesResponse;
  use Moose;
  has Attributes => (is => 'ro', isa => 'Paws::SNS::SubscriptionAttributesMap');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::GetSubscriptionAttributesResponse

=head1 ATTRIBUTES


=head2 Attributes => L<Paws::SNS::SubscriptionAttributesMap>

A map of the subscription's attributes. Attributes in this map include
the following:

=over

=item *

C<SubscriptionArn> -- the subscription's ARN

=item *

C<TopicArn> -- the topic ARN that the subscription is associated with

=item *

C<Owner> -- the AWS account ID of the subscription's owner

=item *

C<ConfirmationWasAuthenticated> -- true if the subscription
confirmation request was authenticated

=item *

C<DeliveryPolicy> -- the JSON serialization of the subscription's
delivery policy

=item *

C<EffectiveDeliveryPolicy> -- the JSON serialization of the effective
delivery policy that takes into account the topic delivery policy and
account system defaults

=back



=head2 _request_id => Str


=cut

