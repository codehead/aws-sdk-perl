
package Paws::ElastiCache::TestFailover;
  use Moose;
  has NodeGroupId => (is => 'ro', isa => 'Str', required => 1);
  has ReplicationGroupId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TestFailover');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElastiCache::TestFailoverResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'TestFailoverResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElastiCache::TestFailover - Arguments for method TestFailover on Paws::ElastiCache

=head1 DESCRIPTION

This class represents the parameters used for calling the method TestFailover on the 
Amazon ElastiCache service. Use the attributes of this class
as arguments to method TestFailover.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TestFailover.

As an example:

  $service_obj->TestFailover(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> NodeGroupId => Str

The name of the node group (called shard in the console) in this
replication group on which automatic failover is to be tested. You may
test automatic failover on up to 5 node groups in any rolling 24-hour
period.



=head2 B<REQUIRED> ReplicationGroupId => Str

The name of the replication group (console: cluster) whose automatic
failover is being tested by this operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TestFailover in L<Paws::ElastiCache>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

