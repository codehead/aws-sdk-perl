
package Paws::RedShift::RebootClusterResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Paws::RedShift::Cluster');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::RebootClusterResult

=head1 ATTRIBUTES

=head2 Cluster => Paws::RedShift::Cluster

  


=cut
