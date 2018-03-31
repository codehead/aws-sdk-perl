
package Paws::EC2::RequestSpotInstances;
  use Moose;
  has AvailabilityZoneGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'availabilityZoneGroup' );
  has BlockDurationMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'blockDurationMinutes' );
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken' );
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has InstanceCount => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'instanceCount' );
  has InstanceInterruptionBehavior => (is => 'ro', isa => 'Str');
  has LaunchGroup => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'launchGroup' );
  has LaunchSpecification => (is => 'ro', isa => 'Paws::EC2::RequestSpotLaunchSpecification');
  has SpotPrice => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'spotPrice' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' );
  has ValidFrom => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validFrom' );
  has ValidUntil => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'validUntil' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RequestSpotInstances');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::RequestSpotInstancesResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::RequestSpotInstances - Arguments for method RequestSpotInstances on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method RequestSpotInstances on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method RequestSpotInstances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RequestSpotInstances.

As an example:

  $service_obj->RequestSpotInstances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AvailabilityZoneGroup => Str

The user-specified name for a logical grouping of bids.

When you specify an Availability Zone group in a Spot Instance request,
all Spot instances in the request are launched in the same Availability
Zone. Instance proximity is maintained with this parameter, but the
choice of Availability Zone is not. The group applies only to bids for
Spot Instances of the same instance type. Any additional Spot instance
requests that are specified with the same Availability Zone group name
are launched in that same Availability Zone, as long as at least one
instance from the group is still active.

If there is no active instance running in the Availability Zone group
that you specify for a new Spot instance request (all instances are
terminated, the bid is expired, or the bid falls below current market),
then Amazon EC2 launches the instance in any Availability Zone where
the constraint can be met. Consequently, the subsequent set of Spot
instances could be placed in a different zone from the original
request, even if you specified the same Availability Zone group.

Default: Instances are launched in any available Availability Zone.



=head2 BlockDurationMinutes => Int

The required duration for the Spot instances (also known as Spot
blocks), in minutes. This value must be a multiple of 60 (60, 120, 180,
240, 300, or 360).

The duration period starts as soon as your Spot instance receives its
instance ID. At the end of the duration period, Amazon EC2 marks the
Spot instance for termination and provides a Spot instance termination
notice, which gives the instance a two-minute warning before it
terminates.

Note that you can't specify an Availability Zone group or a launch
group if you specify a duration.



=head2 ClientToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. For more information, see How to Ensure
Idempotency in the I<Amazon Elastic Compute Cloud User Guide>.



=head2 DryRun => Bool

Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.



=head2 InstanceCount => Int

The maximum number of Spot instances to launch.

Default: 1



=head2 InstanceInterruptionBehavior => Str

Indicates whether a Spot instance stops or terminates when it is
interrupted.

Valid values are: C<"stop">, C<"terminate">

=head2 LaunchGroup => Str

The instance launch group. Launch groups are Spot instances that launch
together and terminate together.

Default: Instances are launched and terminated individually



=head2 LaunchSpecification => L<Paws::EC2::RequestSpotLaunchSpecification>

The launch specification.



=head2 B<REQUIRED> SpotPrice => Str

The maximum hourly price (bid) for any Spot instance launched to
fulfill the request.



=head2 Type => Str

The Spot instance request type.

Default: C<one-time>

Valid values are: C<"one-time">, C<"persistent">

=head2 ValidFrom => Str

The start date of the request. If this is a one-time request, the
request becomes active at this date and time and remains active until
all instances launch, the request expires, or the request is canceled.
If the request is persistent, the request becomes active at this date
and time and remains active until it expires or is canceled.

Default: The request is effective indefinitely.



=head2 ValidUntil => Str

The end date of the request. If this is a one-time request, the request
remains active until all instances launch, the request is canceled, or
this date is reached. If the request is persistent, it remains active
until it is canceled or this date and time is reached.

Default: The request is effective indefinitely.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RequestSpotInstances in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

