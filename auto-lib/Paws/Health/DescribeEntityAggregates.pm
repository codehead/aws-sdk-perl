
package Paws::Health::DescribeEntityAggregates;
  use Moose;
  has EventArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'eventArns' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEntityAggregates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeEntityAggregatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEntityAggregates - Arguments for method DescribeEntityAggregates on Paws::Health

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEntityAggregates on the 
AWS Health APIs and Notifications service. Use the attributes of this class
as arguments to method DescribeEntityAggregates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEntityAggregates.

As an example:

  $service_obj->DescribeEntityAggregates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EventArns => ArrayRef[Str|Undef]

A list of event ARNs (unique identifiers). For example:
C<"arn:aws:health:us-east-1::event/AWS_EC2_MAINTENANCE_5331",
"arn:aws:health:us-west-1::event/AWS_EBS_LOST_VOLUME_xyz">




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEntityAggregates in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

