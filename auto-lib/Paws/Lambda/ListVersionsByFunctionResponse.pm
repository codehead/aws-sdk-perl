
package Paws::Lambda::ListVersionsByFunctionResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Versions => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FunctionConfiguration]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListVersionsByFunctionResponse

=head1 ATTRIBUTES


=head2 NextMarker => Str

A string, present if there are more function versions.


=head2 Versions => ArrayRef[L<Paws::Lambda::FunctionConfiguration>]

A list of Lambda function versions.


=head2 _request_id => Str


=cut

