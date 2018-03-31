
package Paws::KMS::GenerateDataKey;
  use Moose;
  has EncryptionContext => (is => 'ro', isa => 'Paws::KMS::EncryptionContextType');
  has GrantTokens => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has KeySpec => (is => 'ro', isa => 'Str');
  has NumberOfBytes => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GenerateDataKey');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GenerateDataKeyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::GenerateDataKey - Arguments for method GenerateDataKey on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method GenerateDataKey on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method GenerateDataKey.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GenerateDataKey.

As an example:

  $service_obj->GenerateDataKey(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EncryptionContext => L<Paws::KMS::EncryptionContextType>

A set of key-value pairs that represents additional authenticated data.

For more information, see Encryption Context in the I<AWS Key
Management Service Developer Guide>.



=head2 GrantTokens => ArrayRef[Str|Undef]

A list of grant tokens.

For more information, see Grant Tokens in the I<AWS Key Management
Service Developer Guide>.



=head2 B<REQUIRED> KeyId => Str

The identifier of the CMK under which to generate and encrypt the data
encryption key.

A valid identifier is the unique key ID or the Amazon Resource Name
(ARN) of the CMK, or the alias name or ARN of an alias that refers to
the CMK. Examples:

=over

=item *

Unique key ID: C<1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

CMK ARN:
C<arn:aws:kms:us-east-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab>

=item *

Alias name: C<alias/ExampleAlias>

=item *

Alias ARN: C<arn:aws:kms:us-east-2:111122223333:alias/ExampleAlias>

=back




=head2 KeySpec => Str

The length of the data encryption key. Use C<AES_128> to generate a
128-bit symmetric key, or C<AES_256> to generate a 256-bit symmetric
key.

Valid values are: C<"AES_256">, C<"AES_128">

=head2 NumberOfBytes => Int

The length of the data encryption key in bytes. For example, use the
value 64 to generate a 512-bit data key (64 bytes is 512 bits). For
common key lengths (128-bit and 256-bit symmetric keys), we recommend
that you use the C<KeySpec> field instead of this one.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GenerateDataKey in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

