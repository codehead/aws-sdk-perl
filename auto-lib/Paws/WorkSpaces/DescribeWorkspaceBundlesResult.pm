
package Paws::WorkSpaces::DescribeWorkspaceBundlesResult;
  use Moose;
  has Bundles => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::WorkspaceBundle]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspaceBundlesResult

=head1 ATTRIBUTES


=head2 Bundles => ArrayRef[L<Paws::WorkSpaces::WorkspaceBundle>]

An array of structures that contain information about the bundles.


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to this operation to
retrieve the next set of items. This token is valid for one day and
must be used within that time frame.


=head2 _request_id => Str


=cut

1;