
package Paws::EC2::AuthorizeSecurityGroupEgress;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrIp' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fromPort' );
  has GroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupId' , required => 1);
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]', traits => ['NameInRequest'], request_name => 'ipPermissions' );
  has IpProtocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipProtocol' );
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupName' );
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sourceSecurityGroupOwnerId' );
  has ToPort => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'toPort' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupEgress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupEgress - Arguments for method AuthorizeSecurityGroupEgress on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSecurityGroupEgress on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method AuthorizeSecurityGroupEgress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSecurityGroupEgress.

As an example:

  $service_obj->AuthorizeSecurityGroupEgress(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CidrIp => Str

The CIDR IPv4 address range. We recommend that you specify the CIDR
range in a set of IP permissions instead.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

The start of port range for the TCP and UDP protocols, or an ICMP type
number. We recommend that you specify the port range in a set of IP
permissions instead.



=head2 B<REQUIRED> GroupId => Str

The ID of the security group.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

A set of IP permissions. You can't specify a destination security group
and a CIDR IP address range.



=head2 IpProtocol => Str

The IP protocol name or number. We recommend that you specify the
protocol in a set of IP permissions instead.



=head2 SourceSecurityGroupName => Str

The name of a destination security group. To authorize outbound access
to a destination security group, we recommend that you use a set of IP
permissions instead.



=head2 SourceSecurityGroupOwnerId => Str

The AWS account number for a destination security group. To authorize
outbound access to a destination security group, we recommend that you
use a set of IP permissions instead.



=head2 ToPort => Int

The end of port range for the TCP and UDP protocols, or an ICMP type
number. We recommend that you specify the port range in a set of IP
permissions instead.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSecurityGroupEgress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

