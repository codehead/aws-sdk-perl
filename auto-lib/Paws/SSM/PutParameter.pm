
package Paws::SSM::PutParameter;
  use Moose;
  has AllowedPattern => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Overwrite => (is => 'ro', isa => 'Bool');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has Value => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutParameterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutParameter - Arguments for method PutParameter on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutParameter on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method PutParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutParameter.

As an example:

  $service_obj->PutParameter(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AllowedPattern => Str

A regular expression used to validate the parameter value. For example,
for String types with values restricted to numbers, you can specify the
following: AllowedPattern=^\d+$



=head2 Description => Str

Information about the parameter that you want to add to the system



=head2 KeyId => Str

The KMS Key ID that you want to use to encrypt a parameter when you
choose the SecureString data type. If you don't specify a key ID, the
system uses the default key associated with your AWS account.



=head2 B<REQUIRED> Name => Str

The name of the parameter that you want to add to the system.



=head2 Overwrite => Bool

Overwrite an existing parameter. If not specified, will default to
"false".



=head2 B<REQUIRED> Type => Str

The type of parameter that you want to add to the system.

Valid values are: C<"String">, C<"StringList">, C<"SecureString">

=head2 B<REQUIRED> Value => Str

The parameter value that you want to add to the system.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutParameter in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

