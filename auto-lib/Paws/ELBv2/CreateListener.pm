
package Paws::ELBv2::CreateListener;
  use Moose;
  has Certificates => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Certificate]');
  has DefaultActions => (is => 'ro', isa => 'ArrayRef[Paws::ELBv2::Action]', required => 1);
  has LoadBalancerArn => (is => 'ro', isa => 'Str', required => 1);
  has Port => (is => 'ro', isa => 'Int', required => 1);
  has Protocol => (is => 'ro', isa => 'Str', required => 1);
  has SslPolicy => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateListener');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::CreateListenerOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateListenerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::CreateListener - Arguments for method CreateListener on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateListener on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method CreateListener.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateListener.

As an example:

  $service_obj->CreateListener(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Certificates => ArrayRef[L<Paws::ELBv2::Certificate>]

[HTTPS listeners] The SSL server certificate. You must provide exactly
one certificate.



=head2 B<REQUIRED> DefaultActions => ArrayRef[L<Paws::ELBv2::Action>]

The default action for the listener. For Application Load Balancers,
the protocol of the specified target group must be HTTP or HTTPS. For
Network Load Balancers, the protocol of the specified target group must
be TCP.



=head2 B<REQUIRED> LoadBalancerArn => Str

The Amazon Resource Name (ARN) of the load balancer.



=head2 B<REQUIRED> Port => Int

The port on which the load balancer is listening.



=head2 B<REQUIRED> Protocol => Str

The protocol for connections from clients to the load balancer. For
Application Load Balancers, the supported protocols are HTTP and HTTPS.
For Network Load Balancers, the supported protocol is TCP.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TCP">

=head2 SslPolicy => Str

[HTTPS listeners] The security policy that defines which ciphers and
protocols are supported. The default is the current predefined security
policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateListener in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

