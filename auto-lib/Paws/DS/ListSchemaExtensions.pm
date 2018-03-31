
package Paws::DS::ListSchemaExtensions;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSchemaExtensions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::ListSchemaExtensionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::ListSchemaExtensions - Arguments for method ListSchemaExtensions on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSchemaExtensions on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method ListSchemaExtensions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSchemaExtensions.

As an example:

  $service_obj->ListSchemaExtensions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier of the directory from which to retrieve the schema
extension information.



=head2 Limit => Int

The maximum number of items to return.



=head2 NextToken => Str

The C<ListSchemaExtensions.NextToken> value from a previous call to
C<ListSchemaExtensions>. Pass null if this is the first call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSchemaExtensions in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

