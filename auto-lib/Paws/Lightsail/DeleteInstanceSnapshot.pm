
package Paws::Lightsail::DeleteInstanceSnapshot;
  use Moose;
  has InstanceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteInstanceSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::DeleteInstanceSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::DeleteInstanceSnapshot - Arguments for method DeleteInstanceSnapshot on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteInstanceSnapshot on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method DeleteInstanceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteInstanceSnapshot.

As an example:

  $service_obj->DeleteInstanceSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceSnapshotName => Str

The name of the snapshot to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteInstanceSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

