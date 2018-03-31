
package Paws::SSM::GetParameters;
  use Moose;
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has WithDecryption => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetParameters');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetParametersResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetParameters - Arguments for method GetParameters on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetParameters on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method GetParameters.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetParameters.

As an example:

  $service_obj->GetParameters(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

Names of the parameters for which you want to query information.



=head2 WithDecryption => Bool

Return decrypted secure string value. Return decrypted values for
secure string parameters. This flag is ignored for String and
StringList parameter types.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetParameters in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

