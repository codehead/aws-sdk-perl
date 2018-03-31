
package Paws::IoT::CreatePolicy;
  use Moose;
  has PolicyDocument => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyDocument', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'policyName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/policies/{policyName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::CreatePolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::CreatePolicy - Arguments for method CreatePolicy on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePolicy on the 
AWS IoT service. Use the attributes of this class
as arguments to method CreatePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePolicy.

As an example:

  $service_obj->CreatePolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> PolicyDocument => Str

The JSON document that describes the policy. B<policyDocument> must
have a minimum length of 1, with a maximum length of 2048, excluding
whitespace.



=head2 B<REQUIRED> PolicyName => Str

The policy name.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePolicy in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

