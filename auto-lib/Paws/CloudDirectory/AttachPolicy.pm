
package Paws::CloudDirectory::AttachPolicy;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition');
  has ObjectReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has PolicyReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/policy/attach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::AttachPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachPolicy - Arguments for method AttachPolicy on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachPolicy on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method AttachPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachPolicy.

As an example:

  $service_obj->AttachPolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DirectoryArn => Str

The Amazon Resource Name (ARN) that is associated with the Directory
where both objects reside. For more information, see arns.



=head2 B<REQUIRED> ObjectReference => L<Paws::CloudDirectory::ObjectReference>

The reference that identifies the object to which the policy will be
attached.



=head2 B<REQUIRED> PolicyReference => L<Paws::CloudDirectory::ObjectReference>

The reference that is associated with the policy object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachPolicy in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

