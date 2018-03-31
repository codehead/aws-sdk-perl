
package Paws::Route53::CreateHealthCheck;
  use Moose;
  has CallerReference => (is => 'ro', isa => 'Str', required => 1);
  has HealthCheckConfig => (is => 'ro', isa => 'Paws::Route53::HealthCheckConfig', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHealthCheck');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::CreateHealthCheckResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::CreateHealthCheck - Arguments for method CreateHealthCheck on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHealthCheck on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method CreateHealthCheck.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHealthCheck.

As an example:

  $service_obj->CreateHealthCheck(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CallerReference => Str

A unique string that identifies the request and that allows you to
retry a failed C<CreateHealthCheck> request without the risk of
creating two identical health checks:

=over

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> and settings as a previous request, and if the
health check doesn't exist, Amazon Route 53 creates the health check.
If the health check does exist, Amazon Route 53 returns the settings
for the existing health check.

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> as a deleted health check, regardless of the
settings, Amazon Route 53 returns a C<HealthCheckAlreadyExists> error.

=item *

If you send a C<CreateHealthCheck> request with the same
C<CallerReference> as an existing health check but with different
settings, Amazon Route 53 returns a C<HealthCheckAlreadyExists> error.

=item *

If you send a C<CreateHealthCheck> request with a unique
C<CallerReference> but settings identical to an existing health check,
Amazon Route 53 creates the health check.

=back




=head2 B<REQUIRED> HealthCheckConfig => L<Paws::Route53::HealthCheckConfig>

A complex type that contains the response to a C<CreateHealthCheck>
request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHealthCheck in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

