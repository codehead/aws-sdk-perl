
package Paws::Lightsail::CreateInstanceSnapshot;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has InstanceSnapshotName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceSnapshotName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateInstanceSnapshot');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::CreateInstanceSnapshotResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::CreateInstanceSnapshot - Arguments for method CreateInstanceSnapshot on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateInstanceSnapshot on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method CreateInstanceSnapshot.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateInstanceSnapshot.

As an example:

  $service_obj->CreateInstanceSnapshot(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The Lightsail instance on which to base your snapshot.



=head2 B<REQUIRED> InstanceSnapshotName => Str

The name for your new snapshot.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateInstanceSnapshot in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

