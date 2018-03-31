
package Paws::Shield::CreateSubscription;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSubscription');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::CreateSubscriptionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::CreateSubscription - Arguments for method CreateSubscription on Paws::Shield

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSubscription on the 
AWS Shield service. Use the attributes of this class
as arguments to method CreateSubscription.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSubscription.

As an example:

  $service_obj->CreateSubscription(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSubscription in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

