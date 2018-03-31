
package Paws::Route53Domains::CheckDomainTransferability;
  use Moose;
  has AuthCode => (is => 'ro', isa => 'Str');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CheckDomainTransferability');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::CheckDomainTransferabilityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::CheckDomainTransferability - Arguments for method CheckDomainTransferability on Paws::Route53Domains

=head1 DESCRIPTION

This class represents the parameters used for calling the method CheckDomainTransferability on the 
Amazon Route 53 Domains service. Use the attributes of this class
as arguments to method CheckDomainTransferability.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CheckDomainTransferability.

As an example:

  $service_obj->CheckDomainTransferability(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AuthCode => Str

If the registrar for the top-level domain (TLD) requires an
authorization code to transfer the domain, the code that you got from
the current registrar for the domain.



=head2 B<REQUIRED> DomainName => Str

The name of the domain that you want to transfer to Amazon Route 53.

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CheckDomainTransferability in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

