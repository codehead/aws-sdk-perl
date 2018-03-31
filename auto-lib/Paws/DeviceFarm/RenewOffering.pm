
package Paws::DeviceFarm::RenewOffering;
  use Moose;
  has OfferingId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'offeringId' );
  has Quantity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'quantity' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RenewOffering');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::RenewOfferingResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::RenewOffering - Arguments for method RenewOffering on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method RenewOffering on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method RenewOffering.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RenewOffering.

As an example:

  $service_obj->RenewOffering(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 OfferingId => Str

The ID of a request to renew an offering.



=head2 Quantity => Int

The quantity requested in an offering renewal.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RenewOffering in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

