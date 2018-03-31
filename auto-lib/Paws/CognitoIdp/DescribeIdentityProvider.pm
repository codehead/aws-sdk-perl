
package Paws::CognitoIdp::DescribeIdentityProvider;
  use Moose;
  has ProviderName => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeIdentityProvider');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::DescribeIdentityProviderResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::DescribeIdentityProvider - Arguments for method DescribeIdentityProvider on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeIdentityProvider on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method DescribeIdentityProvider.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeIdentityProvider.

As an example:

  $service_obj->DescribeIdentityProvider(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProviderName => Str

The identity provider name.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeIdentityProvider in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

