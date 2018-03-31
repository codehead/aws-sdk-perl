
package Paws::Batch::TerminateJob;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TerminateJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/terminatejob');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Batch::TerminateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Batch::TerminateJob - Arguments for method TerminateJob on Paws::Batch

=head1 DESCRIPTION

This class represents the parameters used for calling the method TerminateJob on the 
AWS Batch service. Use the attributes of this class
as arguments to method TerminateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TerminateJob.

As an example:

  $service_obj->TerminateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

Job IDs to be terminated. Up to 100 jobs can be specified.



=head2 B<REQUIRED> Reason => Str

A message to attach to the job that explains the reason for cancelling
it. This message is returned by future DescribeJobs operations on the
job. This message is also recorded in the AWS Batch activity logs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TerminateJob in L<Paws::Batch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

