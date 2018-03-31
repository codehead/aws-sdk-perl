
package Paws::StepFunctions::ListExecutions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has StateMachineArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stateMachineArn' , required => 1);
  has StatusFilter => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusFilter' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExecutions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StepFunctions::ListExecutionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StepFunctions::ListExecutions - Arguments for method ListExecutions on Paws::StepFunctions

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExecutions on the 
AWS Step Functions service. Use the attributes of this class
as arguments to method ListExecutions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExecutions.

As an example:

  $service_obj->ListExecutions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results that will be returned per call.
C<nextToken> can be used to obtain further pages of results. The
default is 100 and the maximum allowed page size is 1000.

This is an upper limit only; the actual number of results returned per
call may be fewer than the specified maximum.



=head2 NextToken => Str

If a C<nextToken> was returned by a previous call, there are more
results available. To retrieve the next page of results, make the call
again using the returned token in C<nextToken>. Keep all other
arguments unchanged.

The configured C<maxResults> determines how many results can be
returned in a single call.



=head2 B<REQUIRED> StateMachineArn => Str

The Amazon Resource Name (ARN) of the state machine whose executions
will be listed.



=head2 StatusFilter => Str

If specified, only list the executions whose current execution status
matches the given filter.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"TIMED_OUT">, C<"ABORTED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExecutions in L<Paws::StepFunctions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

