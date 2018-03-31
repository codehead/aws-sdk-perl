
package Paws::EC2::AuthorizeSecurityGroupIngress;
  use Moose;
  has CidrIp => (is => 'ro', isa => 'Str');
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has FromPort => (is => 'ro', isa => 'Int');
  has GroupId => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str');
  has IpPermissions => (is => 'ro', isa => 'ArrayRef[Paws::EC2::IpPermission]');
  has IpProtocol => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupName => (is => 'ro', isa => 'Str');
  has SourceSecurityGroupOwnerId => (is => 'ro', isa => 'Str');
  has ToPort => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AuthorizeSecurityGroupIngress');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AuthorizeSecurityGroupIngress - Arguments for method AuthorizeSecurityGroupIngress on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method AuthorizeSecurityGroupIngress on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method AuthorizeSecurityGroupIngress.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AuthorizeSecurityGroupIngress.

As an example:

  $service_obj->AuthorizeSecurityGroupIngress(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CidrIp => Str

The CIDR IPv4 address range. You can't specify this parameter when
specifying a source security group.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 FromPort => Int

The start of port range for the TCP and UDP protocols, or an
ICMP/ICMPv6 type number. For the ICMP/ICMPv6 type number, use C<-1> to
specify all types. If you specify all ICMP/ICMPv6 types, you must
specify all codes.



=head2 GroupId => Str

The ID of the security group. You must specify either the security
group ID or the security group name in the request. For security groups
in a nondefault VPC, you must specify the security group ID.



=head2 GroupName => Str

[EC2-Classic, default VPC] The name of the security group. You must
specify either the security group ID or the security group name in the
request.



=head2 IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>]

A set of IP permissions. Can be used to specify multiple rules in a
single command.



=head2 IpProtocol => Str

The IP protocol name (C<tcp>, C<udp>, C<icmp>) or number (see Protocol
Numbers). (VPC only) Use C<-1> to specify all protocols. If you specify
C<-1>, or a protocol number other than C<tcp>, C<udp>, C<icmp>, or
C<58> (ICMPv6), traffic on all ports is allowed, regardless of any
ports you specify. For C<tcp>, C<udp>, and C<icmp>, you must specify a
port range. For protocol C<58> (ICMPv6), you can optionally specify a
port range; if you don't, traffic for all types and codes is allowed.



=head2 SourceSecurityGroupName => Str

[EC2-Classic, default VPC] The name of the source security group. You
can't specify this parameter in combination with the following
parameters: the CIDR IP address range, the start of the port range, the
IP protocol, and the end of the port range. Creates rules that grant
full ICMP, UDP, and TCP access. To create a rule with a specific IP
protocol and port range, use a set of IP permissions instead. For
EC2-VPC, the source security group must be in the same VPC.



=head2 SourceSecurityGroupOwnerId => Str

[EC2-Classic] The AWS account number for the source security group, if
the source security group is in a different account. You can't specify
this parameter in combination with the following parameters: the CIDR
IP address range, the IP protocol, the start of the port range, and the
end of the port range. Creates rules that grant full ICMP, UDP, and TCP
access. To create a rule with a specific IP protocol and port range,
use a set of IP permissions instead.



=head2 ToPort => Int

The end of port range for the TCP and UDP protocols, or an ICMP/ICMPv6
code number. For the ICMP/ICMPv6 code number, use C<-1> to specify all
codes. If you specify all ICMP/ICMPv6 types, you must specify all
codes.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AuthorizeSecurityGroupIngress in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

