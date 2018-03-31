
package Paws::EC2::CreateNatGateway;
  use Moose;
  has AllocationId => (is => 'ro', isa => 'Str', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNatGateway');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::CreateNatGatewayResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::CreateNatGateway - Arguments for method CreateNatGateway on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNatGateway on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method CreateNatGateway.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNatGateway.

As an example:

  $service_obj->CreateNatGateway(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AllocationId => Str

The allocation ID of an Elastic IP address to associate with the NAT
gateway. If the Elastic IP address is associated with another resource,
you must first disassociate it.



=head2 ClientToken => Str

Unique, case-sensitive identifier you provide to ensure the idempotency
of the request. For more information, see How to Ensure Idempotency.

Constraint: Maximum 64 ASCII characters.



=head2 B<REQUIRED> SubnetId => Str

The subnet in which to create the NAT gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNatGateway in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

