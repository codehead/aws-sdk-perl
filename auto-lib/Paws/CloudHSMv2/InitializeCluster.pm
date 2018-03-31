
package Paws::CloudHSMv2::InitializeCluster;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has SignedCert => (is => 'ro', isa => 'Str', required => 1);
  has TrustAnchor => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InitializeCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::InitializeClusterResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::InitializeCluster - Arguments for method InitializeCluster on Paws::CloudHSMv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method InitializeCluster on the 
AWS CloudHSM V2 service. Use the attributes of this class
as arguments to method InitializeCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InitializeCluster.

As an example:

  $service_obj->InitializeCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The identifier (ID) of the cluster that you are claiming. To find the
cluster ID, use DescribeClusters.



=head2 B<REQUIRED> SignedCert => Str

The cluster certificate issued (signed) by your issuing certificate
authority (CA). The certificate must be in PEM format.



=head2 B<REQUIRED> TrustAnchor => Str

The issuing certificate of the issuing certificate authority (CA) that
issued (signed) the cluster certificate. This can be a root
(self-signed) certificate or a certificate chain that begins with the
certificate that issued the cluster certificate and ends with a root
certificate. The certificate or certificate chain must be in PEM
format.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InitializeCluster in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

