
package Paws::Greengrass::CreateSubscriptionDefinitionVersion;
  use Moose;
  has AmznClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amzn-Client-Token');
  has SubscriptionDefinitionId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SubscriptionDefinitionId', required => 1);
  has Subscriptions => (is => 'ro', isa => 'ArrayRef[Paws::Greengrass::Subscription]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscriptionDefinitionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/greengrass/definition/subscriptions/{SubscriptionDefinitionId}/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Greengrass::CreateSubscriptionDefinitionVersionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::CreateSubscriptionDefinitionVersion - Arguments for method CreateSubscriptionDefinitionVersion on Paws::Greengrass

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscriptionDefinitionVersion on the 
AWS Greengrass service. Use the attributes of this class
as arguments to method CreateSubscriptionDefinitionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscriptionDefinitionVersion.

As an example:

  $service_obj->CreateSubscriptionDefinitionVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmznClientToken => Str

The client token used to request idempotent operations.



=head2 B<REQUIRED> SubscriptionDefinitionId => Str

subscription definition Id



=head2 Subscriptions => ArrayRef[L<Paws::Greengrass::Subscription>]

Subscriptions in the version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscriptionDefinitionVersion in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

