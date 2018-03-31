
package Paws::IoT::DeleteCACertificate;
  use Moose;
  has CertificateId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'certificateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCACertificate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cacertificate/{caCertificateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::DeleteCACertificateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DeleteCACertificate - Arguments for method DeleteCACertificate on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCACertificate on the 
AWS IoT service. Use the attributes of this class
as arguments to method DeleteCACertificate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCACertificate.

As an example:

  $service_obj->DeleteCACertificate(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CertificateId => Str

The ID of the certificate to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCACertificate in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

