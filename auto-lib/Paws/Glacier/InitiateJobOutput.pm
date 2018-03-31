
package Paws::Glacier::InitiateJobOutput;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'jobId');
  has Location => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'location');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::InitiateJobOutput

=head1 ATTRIBUTES


=head2 JobId => Str

The ID of the job.


=head2 Location => Str

The relative URI path of the job.


=head2 _request_id => Str


=cut

