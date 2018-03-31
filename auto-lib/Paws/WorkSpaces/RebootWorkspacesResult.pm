
package Paws::WorkSpaces::RebootWorkspacesResult;
  use Moose;
  has FailedRequests => (is => 'ro', isa => 'ArrayRef[Paws::WorkSpaces::FailedWorkspaceChangeRequest]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpaces::RebootWorkspacesResult

=head1 ATTRIBUTES


=head2 FailedRequests => ArrayRef[L<Paws::WorkSpaces::FailedWorkspaceChangeRequest>]

An array of structures representing any WorkSpaces that could not be
rebooted.


=head2 _request_id => Str


=cut

1;