
package Paws::CodeBuild::ListProjects;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy' );
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProjects');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::ListProjectsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ListProjects - Arguments for method ListProjects on Paws::CodeBuild

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProjects on the 
AWS CodeBuild service. Use the attributes of this class
as arguments to method ListProjects.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProjects.

As an example:

  $service_obj->ListProjects(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

During a previous call, if there are more than 100 items in the list,
only the first 100 items are returned, along with a unique string
called a I<next token>. To get the next batch of items in the list,
call this operation again, adding the next token to the call. To get
all of the items in the list, keep calling this operation with each
subsequent next token that is returned, until no more next tokens are
returned.



=head2 SortBy => Str

The criterion to be used to list build project names. Valid values
include:

=over

=item *

C<CREATED_TIME>: List the build project names based on when each build
project was created.

=item *

C<LAST_MODIFIED_TIME>: List the build project names based on when
information about each build project was last changed.

=item *

C<NAME>: List the build project names based on each build project's
name.

=back

Use C<sortOrder> to specify in what order to list the build project
names based on the preceding criteria.

Valid values are: C<"NAME">, C<"CREATED_TIME">, C<"LAST_MODIFIED_TIME">

=head2 SortOrder => Str

The order in which to list build projects. Valid values include:

=over

=item *

C<ASCENDING>: List the build project names in ascending order.

=item *

C<DESCENDING>: List the build project names in descending order.

=back

Use C<sortBy> to specify the criterion to be used to list build project
names.

Valid values are: C<"ASCENDING">, C<"DESCENDING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProjects in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

