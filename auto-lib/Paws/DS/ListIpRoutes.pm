
package Paws::DS::ListIpRoutes;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListIpRoutes');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ListIpRoutesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListIpRoutes - Arguments for method ListIpRoutes on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListIpRoutes on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method ListIpRoutes.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListIpRoutes.

As an example:

  $service_obj->ListIpRoutes(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

Identifier (ID) of the directory for which you want to retrieve the IP
addresses.



=head2 Limit => Int

Maximum number of items to return. If this value is zero, the maximum
number of items is specified by the limitations of the operation.



=head2 NextToken => Str

The I<ListIpRoutes.NextToken> value from a previous call to
ListIpRoutes. Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListIpRoutes in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

