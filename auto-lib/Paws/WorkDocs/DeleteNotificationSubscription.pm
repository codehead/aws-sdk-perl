
package Paws::WorkDocs::DeleteNotificationSubscription;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OrganizationId', required => 1);
  has SubscriptionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotificationSubscription');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v1/organizations/{OrganizationId}/subscriptions/{SubscriptionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkDocs::DeleteNotificationSubscription - Arguments for method DeleteNotificationSubscription on Paws::WorkDocs

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNotificationSubscription on the 
Amazon WorkDocs service. Use the attributes of this class
as arguments to method DeleteNotificationSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNotificationSubscription.

As an example:

  $service_obj->DeleteNotificationSubscription(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The ID of the organization.



=head2 B<REQUIRED> SubscriptionId => Str

The ID of the subscription.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNotificationSubscription in L<Paws::WorkDocs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

