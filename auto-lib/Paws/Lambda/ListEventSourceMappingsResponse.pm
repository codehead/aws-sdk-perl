
package Paws::Lambda::ListEventSourceMappingsResponse;
  use Moose;
  has EventSourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::EventSourceMappingConfiguration]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListEventSourceMappingsResponse

=head1 ATTRIBUTES


=head2 EventSourceMappings => ArrayRef[L<Paws::Lambda::EventSourceMappingConfiguration>]

An array of C<EventSourceMappingConfiguration> objects.


=head2 NextMarker => Str

A string, present if there are more event source mappings.


=head2 _request_id => Str


=cut

