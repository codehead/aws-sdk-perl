
package Paws::ServiceCatalog::UpdateProvisioningArtifactOutput;
  use Moose;
  has Info => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactInfo');
  has ProvisioningArtifactDetail => (is => 'ro', isa => 'Paws::ServiceCatalog::ProvisioningArtifactDetail');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdateProvisioningArtifactOutput

=head1 ATTRIBUTES


=head2 Info => L<Paws::ServiceCatalog::ProvisioningArtifactInfo>

Additional information about the provisioning artifact update request.


=head2 ProvisioningArtifactDetail => L<Paws::ServiceCatalog::ProvisioningArtifactDetail>

The resulting detailed provisioning artifact information.


=head2 Status => Str

The status of the current request.

Valid values are: C<"AVAILABLE">, C<"CREATING">, C<"FAILED">
=head2 _request_id => Str


=cut

1;