
package Paws::IoT::RegisterCertificate;
  use Moose;
  has CaCertificatePem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caCertificatePem');
  has CertificatePem => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificatePem', required => 1);
  has SetAsActive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsActive');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificate/register');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::RegisterCertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCertificate - Arguments for method RegisterCertificate on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCertificate on the 
AWS IoT service. Use the attributes of this class
as arguments to method RegisterCertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCertificate.

As an example:

  $service_obj->RegisterCertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CaCertificatePem => Str

The CA certificate used to sign the device certificate being
registered.



=head2 B<REQUIRED> CertificatePem => Str

The certificate data, in PEM format.



=head2 SetAsActive => Bool

A boolean value that specifies if the CA certificate is set to active.



=head2 Status => Str

The status of the register certificate request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">, C<"REVOKED">, C<"PENDING_TRANSFER">, C<"REGISTER_INACTIVE">, C<"PENDING_ACTIVATION">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

