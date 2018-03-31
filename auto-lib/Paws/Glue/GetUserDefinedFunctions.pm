
package Paws::Glue::GetUserDefinedFunctions;
  use Moose;
  has CatalogId => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Pattern => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUserDefinedFunctions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetUserDefinedFunctionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetUserDefinedFunctions - Arguments for method GetUserDefinedFunctions on Paws::Glue

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUserDefinedFunctions on the 
AWS Glue service. Use the attributes of this class
as arguments to method GetUserDefinedFunctions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUserDefinedFunctions.

As an example:

  $service_obj->GetUserDefinedFunctions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 CatalogId => Str

The ID of the Data Catalog where the functions to be retrieved are
located. If none is supplied, the AWS account ID is used by default.



=head2 B<REQUIRED> DatabaseName => Str

The name of the catalog database where the functions are located.



=head2 MaxResults => Int

The maximum number of functions to return in one response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 B<REQUIRED> Pattern => Str

An optional function-name pattern string that filters the function
definitions returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUserDefinedFunctions in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

