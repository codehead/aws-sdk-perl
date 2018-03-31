
package Paws::S3::PutBucketAnalyticsConfiguration;
  use Moose;
  has AnalyticsConfiguration => (is => 'ro', isa => 'Paws::S3::AnalyticsConfiguration', required => 1);
  has Bucket => (is => 'ro', isa => 'Str', uri_name => 'Bucket', traits => ['ParamInURI'], required => 1);
  has Id => (is => 'ro', isa => 'Str', query_name => 'id', traits => ['ParamInQuery'], required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBucketAnalyticsConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?analytics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::PutBucketAnalyticsConfiguration - Arguments for method PutBucketAnalyticsConfiguration on Paws::S3

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBucketAnalyticsConfiguration on the 
Amazon Simple Storage Service service. Use the attributes of this class
as arguments to method PutBucketAnalyticsConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBucketAnalyticsConfiguration.

As an example:

  $service_obj->PutBucketAnalyticsConfiguration(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalyticsConfiguration => L<Paws::S3::AnalyticsConfiguration>

The configuration and any analyses for the analytics filter.



=head2 B<REQUIRED> Bucket => Str

The name of the bucket to which an analytics configuration is stored.



=head2 B<REQUIRED> Id => Str

The identifier used to represent an analytics configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBucketAnalyticsConfiguration in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

