
package Paws::SimpleWorkflow::CountClosedWorkflowExecutions;
  use Moose;
  has CloseStatusFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::CloseStatusFilter', traits => ['NameInRequest'], request_name => 'closeStatusFilter' );
  has CloseTimeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExecutionTimeFilter', traits => ['NameInRequest'], request_name => 'closeTimeFilter' );
  has Domain => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domain' , required => 1);
  has ExecutionFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecutionFilter', traits => ['NameInRequest'], request_name => 'executionFilter' );
  has StartTimeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::ExecutionTimeFilter', traits => ['NameInRequest'], request_name => 'startTimeFilter' );
  has TagFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::TagFilter', traits => ['NameInRequest'], request_name => 'tagFilter' );
  has TypeFilter => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowTypeFilter', traits => ['NameInRequest'], request_name => 'typeFilter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CountClosedWorkflowExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SimpleWorkflow::WorkflowExecutionCount');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::CountClosedWorkflowExecutions - Arguments for method CountClosedWorkflowExecutions on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method CountClosedWorkflowExecutions on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method CountClosedWorkflowExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CountClosedWorkflowExecutions.

As an example:

  $service_obj->CountClosedWorkflowExecutions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CloseStatusFilter => L<Paws::SimpleWorkflow::CloseStatusFilter>

If specified, only workflow executions that match this close status are
counted. This filter has an affect only if C<executionStatus> is
specified as C<CLOSED>.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 CloseTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>

If specified, only workflow executions that meet the close time
criteria of the filter are counted.

C<startTimeFilter> and C<closeTimeFilter> are mutually exclusive. You
must specify one of these in a request but not both.



=head2 B<REQUIRED> Domain => Str

The name of the domain containing the workflow executions to count.



=head2 ExecutionFilter => L<Paws::SimpleWorkflow::WorkflowExecutionFilter>

If specified, only workflow executions matching the C<WorkflowId> in
the filter are counted.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 StartTimeFilter => L<Paws::SimpleWorkflow::ExecutionTimeFilter>

If specified, only workflow executions that meet the start time
criteria of the filter are counted.

C<startTimeFilter> and C<closeTimeFilter> are mutually exclusive. You
must specify one of these in a request but not both.



=head2 TagFilter => L<Paws::SimpleWorkflow::TagFilter>

If specified, only executions that have a tag that matches the filter
are counted.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.



=head2 TypeFilter => L<Paws::SimpleWorkflow::WorkflowTypeFilter>

If specified, indicates the type of the workflow executions to be
counted.

C<closeStatusFilter>, C<executionFilter>, C<typeFilter> and
C<tagFilter> are mutually exclusive. You can specify at most one of
these in a request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CountClosedWorkflowExecutions in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

