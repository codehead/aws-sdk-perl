package Paws::Glue::DevEndpoint;
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has EndpointName => (is => 'ro', isa => 'Str');
  has ExtraJarsS3Path => (is => 'ro', isa => 'Str');
  has ExtraPythonLibsS3Path => (is => 'ro', isa => 'Str');
  has FailureReason => (is => 'ro', isa => 'Str');
  has LastModifiedTimestamp => (is => 'ro', isa => 'Str');
  has LastUpdateStatus => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
  has PublicAddress => (is => 'ro', isa => 'Str');
  has PublicKey => (is => 'ro', isa => 'Str');
  has RoleArn => (is => 'ro', isa => 'Str');
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');
  has SubnetId => (is => 'ro', isa => 'Str');
  has VpcId => (is => 'ro', isa => 'Str');
  has YarnEndpointAddress => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::DevEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::DevEndpoint object:

  $service_obj->Method(Att1 => { AvailabilityZone => $value, ..., YarnEndpointAddress => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::DevEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->AvailabilityZone

=head1 DESCRIPTION

A development endpoint where a developer can remotely debug ETL
scripts.

=head1 ATTRIBUTES


=head2 AvailabilityZone => Str

  The AWS availability zone where this DevEndpoint is located.


=head2 CreatedTimestamp => Str

  The point in time at which this DevEndpoint was created.


=head2 EndpointName => Str

  The name of the DevEndpoint.


=head2 ExtraJarsS3Path => Str

  Path to one or more Java Jars in an S3 bucket that should be loaded in
your DevEndpoint.


=head2 ExtraPythonLibsS3Path => Str

  Path to one or more Python libraries in an S3 bucket that should be
loaded in your DevEndpoint.


=head2 FailureReason => Str

  The reason for a current failure in this DevEndpoint.


=head2 LastModifiedTimestamp => Str

  The point in time at which this DevEndpoint was last modified.


=head2 LastUpdateStatus => Str

  The status of the last update.


=head2 NumberOfNodes => Int

  The number of nodes used by this DevEndpoint.


=head2 PublicAddress => Str

  The public address used by this DevEndpoint.


=head2 PublicKey => Str

  The public key to be used by this DevEndpoint for authentication.


=head2 RoleArn => Str

  The AWS ARN of the IAM role used in this DevEndpoint.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

  A list of security group identifiers used in this DevEndpoint.


=head2 Status => Str

  The current status of this DevEndpoint.


=head2 SubnetId => Str

  The subnet ID for this DevEndpoint.


=head2 VpcId => Str

  The ID of the virtual private cloud (VPC) used by this DevEndpoint.


=head2 YarnEndpointAddress => Str

  The YARN endpoint address used by this DevEndpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

