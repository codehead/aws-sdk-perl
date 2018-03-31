
package Paws::SSM::GetParametersByPath;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ParameterFilters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::ParameterStringFilter]');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has Recursive => (is => 'ro', isa => 'Bool');
  has WithDecryption => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParametersByPath');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetParametersByPathResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParametersByPath - Arguments for method GetParametersByPath on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParametersByPath on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method GetParametersByPath.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParametersByPath.

As an example:

  $service_obj->GetParametersByPath(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]

Filters to limit the request results.



=head2 B<REQUIRED> Path => Str

The hierarchy for the parameter. Hierarchies start with a forward slash
(/) and end with the parameter name. A hierarchy can have a maximum of
five levels. Examples: /Environment/Test/DBString003

/Finance/Prod/IAD/OS/WinServ2016/license15



=head2 Recursive => Bool

Retrieve all parameters within a hierarchy.



=head2 WithDecryption => Bool

Retrieve all parameters in a hierarchy with their value decrypted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParametersByPath in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

