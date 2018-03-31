
package Paws::ECS::ListTaskDefinitionFamilies;
  use Moose;
  has FamilyPrefix => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'familyPrefix' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTaskDefinitionFamilies');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECS::ListTaskDefinitionFamiliesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECS::ListTaskDefinitionFamilies - Arguments for method ListTaskDefinitionFamilies on Paws::ECS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTaskDefinitionFamilies on the 
Amazon EC2 Container Service service. Use the attributes of this class
as arguments to method ListTaskDefinitionFamilies.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTaskDefinitionFamilies.

As an example:

  $service_obj->ListTaskDefinitionFamilies(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 FamilyPrefix => Str

The C<familyPrefix> is a string that is used to filter the results of
C<ListTaskDefinitionFamilies>. If you specify a C<familyPrefix>, only
task definition family names that begin with the C<familyPrefix> string
are returned.



=head2 MaxResults => Int

The maximum number of task definition family results returned by
C<ListTaskDefinitionFamilies> in paginated output. When this parameter
is used, C<ListTaskDefinitions> only returns C<maxResults> results in a
single page along with a C<nextToken> response element. The remaining
results of the initial request can be seen by sending another
C<ListTaskDefinitionFamilies> request with the returned C<nextToken>
value. This value can be between 1 and 100. If this parameter is not
used, then C<ListTaskDefinitionFamilies> returns up to 100 results and
a C<nextToken> value if applicable.



=head2 NextToken => Str

The C<nextToken> value returned from a previous paginated
C<ListTaskDefinitionFamilies> request where C<maxResults> was used and
the results exceeded the value of that parameter. Pagination continues
from the end of the previous results that returned the C<nextToken>
value. This value is C<null> when there are no more results to return.

This token should be treated as an opaque identifier that is only used
to retrieve the next items in a list and not for other programmatic
purposes.



=head2 Status => Str

The task definition family status with which to filter the
C<ListTaskDefinitionFamilies> results. By default, both C<ACTIVE> and
C<INACTIVE> task definition families are listed. If this parameter is
set to C<ACTIVE>, only task definition families that have an C<ACTIVE>
task definition revision are returned. If this parameter is set to
C<INACTIVE>, only task definition families that do not have any
C<ACTIVE> task definition revisions are returned. If you paginate the
resulting output, be sure to keep the C<status> value constant in each
subsequent request.

Valid values are: C<"ACTIVE">, C<"INACTIVE">, C<"ALL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTaskDefinitionFamilies in L<Paws::ECS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

