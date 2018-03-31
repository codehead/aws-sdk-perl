
package Paws::Glue::BatchDeleteTable;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has TablesToDelete => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchDeleteTable');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::BatchDeleteTableResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::BatchDeleteTable - Arguments for method BatchDeleteTable on Paws::Glue

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchDeleteTable on the 
AWS Glue service. Use the attributes of this class
as arguments to method BatchDeleteTable.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchDeleteTable.

As an example:

  $service_obj->BatchDeleteTable(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the table resides. If none is
supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the tables to delete reside.



=head2 B<REQUIRED> TablesToDelete => ArrayRef[Str|Undef]

A list of the table to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchDeleteTable in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

