
package Paws::CognitoIdp::ConfirmSignUp;
  use Moose;
  has ClientId => (is => 'ro', isa => 'Str', required => 1);
  has ConfirmationCode => (is => 'ro', isa => 'Str', required => 1);
  has ForceAliasCreation => (is => 'ro', isa => 'Bool');
  has SecretHash => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ConfirmSignUp');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ConfirmSignUpResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ConfirmSignUp - Arguments for method ConfirmSignUp on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method ConfirmSignUp on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method ConfirmSignUp.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ConfirmSignUp.

As an example:

  $service_obj->ConfirmSignUp(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientId => Str

The ID of the app client associated with the user pool.



=head2 B<REQUIRED> ConfirmationCode => Str

The confirmation code sent by a user's request to confirm registration.



=head2 ForceAliasCreation => Bool

Boolean to be specified to force user confirmation irrespective of
existing alias. By default set to C<False>. If this parameter is set to
C<True> and the phone number/email used for sign up confirmation
already exists as an alias with a different user, the API call will
migrate the alias from the previous user to the newly created user
being confirmed. If set to C<False>, the API will throw an
B<AliasExistsException> error.



=head2 SecretHash => Str

A keyed-hash message authentication code (HMAC) calculated using the
secret key of a user pool client and username plus the client ID in the
message.



=head2 B<REQUIRED> Username => Str

The user name of the user whose registration you wish to confirm.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ConfirmSignUp in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

