
package Paws::RedShift::ModifyClusterIamRoles;
  use Moose;
  has AddIamRoles => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RemoveIamRoles => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifyClusterIamRoles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifyClusterIamRolesResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifyClusterIamRolesResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyClusterIamRoles - Arguments for method ModifyClusterIamRoles on Paws::RedShift

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifyClusterIamRoles on the 
Amazon Redshift service. Use the attributes of this class
as arguments to method ModifyClusterIamRoles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifyClusterIamRoles.

As an example:

  $service_obj->ModifyClusterIamRoles(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AddIamRoles => ArrayRef[Str|Undef]

Zero or more IAM roles to associate with the cluster. The roles must be
in their Amazon Resource Name (ARN) format. You can associate up to 10
IAM roles with a single cluster in a single request.



=head2 B<REQUIRED> ClusterIdentifier => Str

The unique identifier of the cluster for which you want to associate or
disassociate IAM roles.



=head2 RemoveIamRoles => ArrayRef[Str|Undef]

Zero or more IAM roles in ARN format to disassociate from the cluster.
You can disassociate up to 10 IAM roles from a single cluster in a
single request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifyClusterIamRoles in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

