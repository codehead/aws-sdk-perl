
package Paws::IoT::ListThingPrincipals;
  use Moose;
  has ThingName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'thingName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListThingPrincipals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/things/{thingName}/principals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListThingPrincipalsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListThingPrincipals - Arguments for method ListThingPrincipals on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListThingPrincipals on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListThingPrincipals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListThingPrincipals.

As an example:

  $service_obj->ListThingPrincipals(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ThingName => Str

The name of the thing.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListThingPrincipals in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

