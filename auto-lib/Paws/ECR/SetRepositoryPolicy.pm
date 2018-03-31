
package Paws::ECR::SetRepositoryPolicy;
  use Moose;
  has Force => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'force' );
  has PolicyText => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyText' , required => 1);
  has RegistryId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'registryId' );
  has RepositoryName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'repositoryName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetRepositoryPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::SetRepositoryPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::SetRepositoryPolicy - Arguments for method SetRepositoryPolicy on Paws::ECR

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetRepositoryPolicy on the 
Amazon EC2 Container Registry service. Use the attributes of this class
as arguments to method SetRepositoryPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetRepositoryPolicy.

As an example:

  $service_obj->SetRepositoryPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Force => Bool

If the policy you are attempting to set on a repository policy would
prevent you from setting another policy in the future, you must force
the SetRepositoryPolicy operation. This is intended to prevent
accidental repository lock outs.



=head2 B<REQUIRED> PolicyText => Str

The JSON repository policy text to apply to the repository.



=head2 RegistryId => Str

The AWS account ID associated with the registry that contains the
repository. If you do not specify a registry, the default registry is
assumed.



=head2 B<REQUIRED> RepositoryName => Str

The name of the repository to receive the policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetRepositoryPolicy in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

