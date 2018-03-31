
package Paws::IoT::RegisterCACertificate;
  use Moose;
  has AllowAutoRegistration => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'allowAutoRegistration');
  has CaCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'caCertificate', required => 1);
  has SetAsActive => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'setAsActive');
  has VerificationCertificate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'verificationCertificate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCACertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cacertificate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::RegisterCACertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::RegisterCACertificate - Arguments for method RegisterCACertificate on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCACertificate on the 
AWS IoT service. Use the attributes of this class
as arguments to method RegisterCACertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCACertificate.

As an example:

  $service_obj->RegisterCACertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AllowAutoRegistration => Bool

Allows this CA certificate to be used for auto registration of device
certificates.



=head2 B<REQUIRED> CaCertificate => Str

The CA certificate.



=head2 SetAsActive => Bool

A boolean value that specifies if the CA certificate is set to active.



=head2 B<REQUIRED> VerificationCertificate => Str

The private key verification certificate.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCACertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

