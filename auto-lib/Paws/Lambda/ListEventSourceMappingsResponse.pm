
package Paws::Lambda::ListEventSourceMappingsResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has EventSourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::EventSourceMappingConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourceMappingsResponse

=head1 ATTRIBUTES

=head2 EventSourceMappings => ArrayRef[Paws::Lambda::EventSourceMappingConfiguration]

  

An arrary of C<EventSourceMappingConfiguration> objects.









=head2 NextMarker => Str

  

A string, present if there are more event source mappings.











=cut

