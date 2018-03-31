
package Paws::WAFRegional::UpdateByteMatchSet;
  use Moose;
  has ByteMatchSetId => (is => 'ro', isa => 'Str', required => 1);
  has ChangeToken => (is => 'ro', isa => 'Str', required => 1);
  has Updates => (is => 'ro', isa => 'ArrayRef[Paws::WAFRegional::ByteMatchSetUpdate]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateByteMatchSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WAFRegional::UpdateByteMatchSetResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WAFRegional::UpdateByteMatchSet - Arguments for method UpdateByteMatchSet on Paws::WAFRegional

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateByteMatchSet on the 
AWS WAF Regional service. Use the attributes of this class
as arguments to method UpdateByteMatchSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateByteMatchSet.

As an example:

  $service_obj->UpdateByteMatchSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ByteMatchSetId => Str

The C<ByteMatchSetId> of the ByteMatchSet that you want to update.
C<ByteMatchSetId> is returned by CreateByteMatchSet and by
ListByteMatchSets.



=head2 B<REQUIRED> ChangeToken => Str

The value returned by the most recent call to GetChangeToken.



=head2 B<REQUIRED> Updates => ArrayRef[L<Paws::WAFRegional::ByteMatchSetUpdate>]

An array of C<ByteMatchSetUpdate> objects that you want to insert into
or delete from a ByteMatchSet. For more information, see the applicable
data types:

=over

=item *

ByteMatchSetUpdate: Contains C<Action> and C<ByteMatchTuple>

=item *

ByteMatchTuple: Contains C<FieldToMatch>, C<PositionalConstraint>,
C<TargetString>, and C<TextTransformation>

=item *

FieldToMatch: Contains C<Data> and C<Type>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateByteMatchSet in L<Paws::WAFRegional>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

