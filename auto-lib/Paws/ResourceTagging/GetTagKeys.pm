
package Paws::ResourceTagging::GetTagKeys;
  use Moose;
  has PaginationToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTagKeys');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ResourceTagging::GetTagKeysOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceTagging::GetTagKeys - Arguments for method GetTagKeys on Paws::ResourceTagging

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTagKeys on the 
AWS Resource Groups Tagging API service. Use the attributes of this class
as arguments to method GetTagKeys.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTagKeys.

As an example:

  $service_obj->GetTagKeys(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 PaginationToken => Str

A string that indicates that additional data is available. Leave this
value empty for your initial request. If the response includes a
PaginationToken, use that string for this value to request an
additional page of data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTagKeys in L<Paws::ResourceTagging>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

