
package Paws::WorkSpaces::DescribeWorkspacesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Workspaces => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::Workspace]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::DescribeWorkspacesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

If not null, more results are available. Pass this value for the
C<NextToken> parameter in a subsequent call to this operation to
retrieve the next set of items. This token is valid for one day and
must be used within that time frame.


=head2 Workspaces => ArrayRef[L<Paws::WorkSpaces::Workspace>]

An array of structures that contain the information about the
WorkSpaces.

Because the CreateWorkspaces operation is asynchronous, some of this
information may be incomplete for a newly-created WorkSpace.


=head2 _request_id => Str


=cut

1;