
package Paws::Shield::ListAttacks;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has StartTime => (is => 'ro', isa => 'Paws::Shield::TimeRange');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttacks');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Shield::ListAttacksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Shield::ListAttacks - Arguments for method ListAttacks on Paws::Shield

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttacks on the 
AWS Shield service. Use the attributes of this class
as arguments to method ListAttacks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttacks.

As an example:

  $service_obj->ListAttacks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EndTime => L<Paws::Shield::TimeRange>

The end of the time period for the attacks.



=head2 MaxResults => Int

The maximum number of AttackSummary objects to be returned. If this is
left blank, the first 20 results will be returned.



=head2 NextToken => Str

The C<ListAttacksRequest.NextMarker> value from a previous call to
C<ListAttacksRequest>. Pass null if this is the first call.



=head2 ResourceArns => ArrayRef[Str|Undef]

The ARN (Amazon Resource Name) of the resource that was attacked. If
this is left blank, all applicable resources for this account will be
included.



=head2 StartTime => L<Paws::Shield::TimeRange>

The time period for the attacks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttacks in L<Paws::Shield>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

