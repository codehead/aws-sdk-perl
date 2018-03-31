
package Paws::CloudWatchLogs::PutDestination;
  use Moose;
  has DestinationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'destinationName' , required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn' , required => 1);
  has TargetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDestination');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatchLogs::PutDestinationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::PutDestination - Arguments for method PutDestination on Paws::CloudWatchLogs

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDestination on the 
Amazon CloudWatch Logs service. Use the attributes of this class
as arguments to method PutDestination.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDestination.

As an example:

  $service_obj->PutDestination(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DestinationName => Str

A name for the destination.



=head2 B<REQUIRED> RoleArn => Str

The ARN of an IAM role that grants CloudWatch Logs permissions to call
the Amazon Kinesis PutRecord operation on the destination stream.



=head2 B<REQUIRED> TargetArn => Str

The ARN of an Amazon Kinesis stream to which to deliver matching log
events.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDestination in L<Paws::CloudWatchLogs>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

