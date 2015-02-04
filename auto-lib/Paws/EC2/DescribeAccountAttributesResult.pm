
package Paws::EC2::DescribeAccountAttributesResult {
  use Moose;
  with 'Paws::API::UnwrappedParser';
  has AccountAttributes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AccountAttribute]', traits => ['Unwrapped'], xmlname => 'accountAttributeSet');

}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeAccountAttributesResult

=head1 ATTRIBUTES

=head2 AccountAttributes => ArrayRef[Paws::EC2::AccountAttribute]

  

Information about one or more account attributes.











=cut
