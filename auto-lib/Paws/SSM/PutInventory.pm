
package Paws::SSM::PutInventory;
  use Moose;
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InventoryItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInventory');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutInventoryResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutInventory - Arguments for method PutInventory on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInventory on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method PutInventory.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInventory.

As an example:

  $service_obj->PutInventory(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceId => Str

One or more instance IDs where you want to add or update inventory
items.



=head2 B<REQUIRED> Items => ArrayRef[L<Paws::SSM::InventoryItem>]

The inventory items that you want to add or update on instances.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInventory in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

