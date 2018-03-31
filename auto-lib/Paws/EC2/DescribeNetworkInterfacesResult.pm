
package Paws::EC2::DescribeNetworkInterfacesResult;
  use Moose;
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInterface]', request_name => 'networkInterfaceSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInterfacesResult

=head1 ATTRIBUTES


=head2 NetworkInterfaces => ArrayRef[L<Paws::EC2::NetworkInterface>]

Information about one or more network interfaces.


=head2 _request_id => Str


=cut

