
package Paws::RDS::FailoverDBCluster;
  use Moose;
  has DBClusterIdentifier => (is => 'ro', isa => 'Str');
  has TargetDBInstanceIdentifier => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'FailoverDBCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::FailoverDBClusterResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'FailoverDBClusterResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::FailoverDBCluster - Arguments for method FailoverDBCluster on Paws::RDS

=head1 DESCRIPTION

This class represents the parameters used for calling the method FailoverDBCluster on the 
Amazon Relational Database Service service. Use the attributes of this class
as arguments to method FailoverDBCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to FailoverDBCluster.

As an example:

  $service_obj->FailoverDBCluster(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DBClusterIdentifier => Str

A DB cluster identifier to force a failover for. This parameter is not
case-sensitive.

Constraints:

=over

=item *

Must contain from 1 to 63 alphanumeric characters or hyphens

=item *

First character must be a letter

=item *

Cannot end with a hyphen or contain two consecutive hyphens

=back




=head2 TargetDBInstanceIdentifier => Str

The name of the instance to promote to the primary instance.

You must specify the instance identifier for an Aurora Replica in the
DB cluster. For example, C<mydbcluster-replica1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method FailoverDBCluster in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

