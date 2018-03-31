
package Paws::DirectConnect::CreateInterconnect;
  use Moose;
  has Bandwidth => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'bandwidth' , required => 1);
  has InterconnectName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'interconnectName' , required => 1);
  has LagId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lagId' );
  has Location => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'location' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInterconnect');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectConnect::Interconnect');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectConnect::CreateInterconnect - Arguments for method CreateInterconnect on Paws::DirectConnect

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInterconnect on the 
AWS Direct Connect service. Use the attributes of this class
as arguments to method CreateInterconnect.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInterconnect.

As an example:

  $service_obj->CreateInterconnect(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Bandwidth => Str

The port bandwidth

Example: 1Gbps

Default: None

Available values: 1Gbps,10Gbps



=head2 B<REQUIRED> InterconnectName => Str

The name of the interconnect.

Example: "I<1G Interconnect to AWS>"

Default: None



=head2 LagId => Str





=head2 B<REQUIRED> Location => Str

Where the interconnect is located

Example: EqSV5

Default: None




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInterconnect in L<Paws::DirectConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

