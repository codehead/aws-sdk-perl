
package Paws::EC2::AssociateVpcCidrBlock;
  use Moose;
  has AmazonProvidedIpv6CidrBlock => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'amazonProvidedIpv6CidrBlock' );
  has CidrBlock => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'vpcId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateVpcCidrBlock');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::AssociateVpcCidrBlockResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateVpcCidrBlock - Arguments for method AssociateVpcCidrBlock on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateVpcCidrBlock on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method AssociateVpcCidrBlock.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateVpcCidrBlock.

As an example:

  $service_obj->AssociateVpcCidrBlock(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AmazonProvidedIpv6CidrBlock => Bool

Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length
for the VPC. You cannot specify the range of IPv6 addresses, or the
size of the CIDR block.



=head2 CidrBlock => Str

An IPv4 CIDR block to associate with the VPC.



=head2 B<REQUIRED> VpcId => Str

The ID of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateVpcCidrBlock in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

