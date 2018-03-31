
package Paws::IAM::CreateServiceSpecificCredential;
  use Moose;
  has ServiceName => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateServiceSpecificCredential');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::CreateServiceSpecificCredentialResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateServiceSpecificCredentialResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::CreateServiceSpecificCredential - Arguments for method CreateServiceSpecificCredential on Paws::IAM

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateServiceSpecificCredential on the 
AWS Identity and Access Management service. Use the attributes of this class
as arguments to method CreateServiceSpecificCredential.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateServiceSpecificCredential.

As an example:

  $service_obj->CreateServiceSpecificCredential(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ServiceName => Str

The name of the AWS service that is to be associated with the
credentials. The service you specify here is the only service that can
be accessed using these credentials.



=head2 B<REQUIRED> UserName => Str

The name of the IAM user that is to be associated with the credentials.
The new service-specific credentials have the same permissions as the
associated user except that they can be used only to access the
specified service.

This parameter allows (per its regex pattern) a string of characters
consisting of upper and lowercase alphanumeric characters with no
spaces. You can also include any of the following characters: =,.@-




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateServiceSpecificCredential in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

