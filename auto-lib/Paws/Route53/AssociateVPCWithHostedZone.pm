
package Paws::Route53::AssociateVPCWithHostedZone;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has HostedZoneId => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has VPC => (is => 'ro', isa => 'Paws::Route53::VPC', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateVPCWithHostedZone');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/hostedzone/{Id}/associatevpc');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::AssociateVPCWithHostedZoneResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::AssociateVPCWithHostedZone - Arguments for method AssociateVPCWithHostedZone on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateVPCWithHostedZone on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method AssociateVPCWithHostedZone.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateVPCWithHostedZone.

As an example:

  $service_obj->AssociateVPCWithHostedZone(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Comment => Str

I<Optional:> A comment about the association request.



=head2 B<REQUIRED> HostedZoneId => Str

The ID of the private hosted zone that you want to associate an Amazon
VPC with.

Note that you can't associate a VPC with a hosted zone that doesn't
have an existing VPC association.



=head2 B<REQUIRED> VPC => L<Paws::Route53::VPC>

A complex type that contains information about the VPC that you want to
associate with a private hosted zone.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateVPCWithHostedZone in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

