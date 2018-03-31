
package Paws::CloudDirectory::ListDirectories;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has State => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDirectories');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/directory/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::ListDirectoriesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::ListDirectories - Arguments for method ListDirectories on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDirectories on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method ListDirectories.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDirectories.

As an example:

  $service_obj->ListDirectories(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to retrieve.



=head2 NextToken => Str

The pagination token.



=head2 State => Str

The state of the directories in the list. Can be either Enabled,
Disabled, or Deleted.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DELETED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDirectories in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

