package Paws::ELBv2::LoadBalancerAttribute;
  use Moose;
  has Key => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::LoadBalancerAttribute

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ELBv2::LoadBalancerAttribute object:

  $service_obj->Method(Att1 => { Key => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ELBv2::LoadBalancerAttribute object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Information about a load balancer attribute.

=head1 ATTRIBUTES


=head2 Key => Str

  The name of the attribute.

=over

=item *

C<access_logs.s3.enabled> - [Application Load Balancers] Indicates
whether access logs stored in Amazon S3 are enabled. The value is
C<true> or C<false>.

=item *

C<access_logs.s3.bucket> - [Application Load Balancers] The name of the
S3 bucket for the access logs. This attribute is required if access
logs in Amazon S3 are enabled. The bucket must exist in the same region
as the load balancer and have a bucket policy that grants Elastic Load
Balancing permission to write to the bucket.

=item *

C<access_logs.s3.prefix> - [Application Load Balancers] The prefix for
the location in the S3 bucket. If you don't specify a prefix, the
access logs are stored in the root of the bucket.

=item *

C<deletion_protection.enabled> - Indicates whether deletion protection
is enabled. The value is C<true> or C<false>.

=item *

C<idle_timeout.timeout_seconds> - [Application Load Balancers] The idle
timeout value, in seconds. The valid range is 1-4000. The default is 60
seconds.

=back



=head2 Value => Str

  The value of the attribute.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

