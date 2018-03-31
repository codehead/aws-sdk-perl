
package Paws::EC2::ReplaceNetworkAclEntry;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrBlock' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Egress => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'egress' , required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Paws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has Ipv6CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ipv6CidrBlock' );
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkAclId' , required => 1);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', traits => ['NameInRequest'], request_name => 'portRange' );
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleAction' , required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ruleNumber' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceNetworkAclEntry - Arguments for method ReplaceNetworkAclEntry on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceNetworkAclEntry on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ReplaceNetworkAclEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceNetworkAclEntry.

As an example:

  $service_obj->ReplaceNetworkAclEntry(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CidrBlock => Str

The IPv4 network range to allow or deny, in CIDR notation (for example
C<172.16.0.0/24>).



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 B<REQUIRED> Egress => Bool

Indicates whether to replace the egress rule.

Default: If no value is specified, we replace the ingress rule.



=head2 IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>

ICMP protocol: The ICMP or ICMPv6 type and code. Required if specifying
the ICMP (1) protocol, or protocol 58 (ICMPv6) with an IPv6 CIDR block.



=head2 Ipv6CidrBlock => Str

The IPv6 network range to allow or deny, in CIDR notation (for example
C<2001:bd8:1234:1a00::/64>).



=head2 B<REQUIRED> NetworkAclId => Str

The ID of the ACL.



=head2 PortRange => L<Paws::EC2::PortRange>

TCP or UDP protocols: The range of ports the rule applies to. Required
if specifying TCP (6) or UDP (17) for the protocol.



=head2 B<REQUIRED> Protocol => Str

The IP protocol. You can specify C<all> or C<-1> to mean all protocols.
If you specify C<all>, C<-1>, or a protocol number other than C<tcp>,
C<udp>, or C<icmp>, traffic on all ports is allowed, regardless of any
ports or ICMP types or codes you specify. If you specify protocol C<58>
(ICMPv6) and specify an IPv4 CIDR block, traffic for all ICMP types and
codes allowed, regardless of any that you specify. If you specify
protocol C<58> (ICMPv6) and specify an IPv6 CIDR block, you must
specify an ICMP type and code.



=head2 B<REQUIRED> RuleAction => Str

Indicates whether to allow or deny the traffic that matches the rule.

Valid values are: C<"allow">, C<"deny">

=head2 B<REQUIRED> RuleNumber => Int

The rule number of the entry to replace.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceNetworkAclEntry in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

