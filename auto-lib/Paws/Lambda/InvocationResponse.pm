
package Paws::Lambda::InvocationResponse;
  use Moose;
  has FunctionError => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Function-Error');
  has LogResult => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'X-Amz-Log-Result');
  has Payload => (is => 'ro', isa => 'Str');
  has StatusCode => (is => 'ro', isa => 'Int');
  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Payload');
  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::InvocationResponse

=head1 ATTRIBUTES


=head2 FunctionError => Str

Indicates whether an error occurred while executing the Lambda
function. If an error occurred this field will have one of two values;
C<Handled> or C<Unhandled>. C<Handled> errors are errors that are
reported by the function while the C<Unhandled> errors are those
detected and reported by AWS Lambda. Unhandled errors include out of
memory errors and function timeouts. For information about how to
report an C<Handled> error, see Programming Model.


=head2 LogResult => Str

It is the base64-encoded logs for the Lambda function invocation. This
is present only if the invocation type is C<RequestResponse> and the
logs were requested.


=head2 Payload => Str

It is the JSON representation of the object returned by the Lambda
function. This is present only if the invocation type is
C<RequestResponse>.

In the event of a function error this field contains a message
describing the error. For the C<Handled> errors the Lambda function
will report this message. For C<Unhandled> errors AWS Lambda reports
the message.


=head2 StatusCode => Int

The HTTP status code will be in the 200 range for successful request.
For the C<RequestResponse> invocation type this status code will be
200. For the C<Event> invocation type this status code will be 202. For
the C<DryRun> invocation type the status code will be 204.


=head2 _request_id => Str


=cut

