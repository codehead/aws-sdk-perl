
package Paws::EMR::ListInstanceFleets;
  use Moose;
  has ClusterId => (is => 'ro', isa => 'Str', required => 1);
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInstanceFleets');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::ListInstanceFleetsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::ListInstanceFleets - Arguments for method ListInstanceFleets on Paws::EMR

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInstanceFleets on the 
Amazon Elastic MapReduce service. Use the attributes of this class
as arguments to method ListInstanceFleets.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInstanceFleets.

As an example:

  $service_obj->ListInstanceFleets(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterId => Str

The unique identifier of the cluster.



=head2 Marker => Str

The pagination token that indicates the next set of results to
retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInstanceFleets in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

