
package Paws::EC2::ModifySpotFleetRequest;
  use Moose;
  has ExcessCapacityTerminationPolicy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'excessCapacityTerminationPolicy' );
  has SpotFleetRequestId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotFleetRequestId' , required => 1);
  has TargetCapacity => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'targetCapacity' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySpotFleetRequest');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ModifySpotFleetRequestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifySpotFleetRequest - Arguments for method ModifySpotFleetRequest on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ModifySpotFleetRequest on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ModifySpotFleetRequest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ModifySpotFleetRequest.

As an example:

  $service_obj->ModifySpotFleetRequest(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ExcessCapacityTerminationPolicy => Str

Indicates whether running Spot instances should be terminated if the
target capacity of the Spot fleet request is decreased below the
current size of the Spot fleet.

Valid values are: C<"noTermination">, C<"default">

=head2 B<REQUIRED> SpotFleetRequestId => Str

The ID of the Spot fleet request.



=head2 TargetCapacity => Int

The size of the fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ModifySpotFleetRequest in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

