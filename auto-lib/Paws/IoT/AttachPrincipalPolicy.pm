
package Paws::IoT::AttachPrincipalPolicy;
  use Moose;
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);
  has Principal => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'principal', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachPrincipalPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/principal-policies/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::AttachPrincipalPolicy - Arguments for method AttachPrincipalPolicy on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachPrincipalPolicy on the 
AWS IoT service. Use the attributes of this class
as arguments to method AttachPrincipalPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachPrincipalPolicy.

As an example:

  $service_obj->AttachPrincipalPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyName => Str

The policy name.



=head2 B<REQUIRED> Principal => Str

The principal, which can be a certificate ARN (as returned from the
CreateCertificate operation) or an Amazon Cognito ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachPrincipalPolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

