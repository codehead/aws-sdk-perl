
package Paws::LexModels::GetBuiltinIntent;
  use Moose;
  has Signature => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'signature', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuiltinIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/builtins/intents/{signature}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetBuiltinIntentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetBuiltinIntent - Arguments for method GetBuiltinIntent on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuiltinIntent on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method GetBuiltinIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuiltinIntent.

As an example:

  $service_obj->GetBuiltinIntent(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Signature => Str

The unique identifier for a built-in intent. To find the signature for
an intent, see Standard Built-in Intents in the I<Alexa Skills Kit>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuiltinIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

