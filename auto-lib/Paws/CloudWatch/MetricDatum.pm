package Paws::CloudWatch::MetricDatum;
  use Moose;
  has Dimensions => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::Dimension]');
  has MetricName => (is => 'ro', isa => 'Str', required => 1);
  has StatisticValues => (is => 'ro', isa => 'Paws::CloudWatch::StatisticSet');
  has StorageResolution => (is => 'ro', isa => 'Int');
  has Timestamp => (is => 'ro', isa => 'Str');
  has Unit => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Num');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::MetricDatum

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudWatch::MetricDatum object:

  $service_obj->Method(Att1 => { Dimensions => $value, ..., Value => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudWatch::MetricDatum object:

  $result = $service_obj->Method(...);
  $result->Att1->Dimensions

=head1 DESCRIPTION

Encapsulates the information sent to either create a metric or add new
values to be aggregated into an existing metric.

=head1 ATTRIBUTES


=head2 Dimensions => ArrayRef[L<Paws::CloudWatch::Dimension>]

  The dimensions associated with the metric.


=head2 B<REQUIRED> MetricName => Str

  The name of the metric.


=head2 StatisticValues => L<Paws::CloudWatch::StatisticSet>

  The statistical values for the metric.


=head2 StorageResolution => Int

  Valid values are 1 and 60. Setting this to 1 specifies this metric as a
high-resolution metric, so that CloudWatch stores the metric with
sub-minute resolution down to one second. Setting this to 60 specifies
this metric as a regular-resolution metric, which CloudWatch stores at
1-minute resolution. Currently, high resolution is available only for
custom metrics. For more information about high-resolution metrics, see
High-Resolution Metrics in the I<Amazon CloudWatch User Guide>.

This field is optional, if you do not specify it the default of 60 is
used.


=head2 Timestamp => Str

  The time the metric data was received, expressed as the number of
milliseconds since Jan 1, 1970 00:00:00 UTC.


=head2 Unit => Str

  The unit of the metric.


=head2 Value => Num

  The value for the metric.

Although the parameter accepts numbers of type Double, CloudWatch
rejects values that are either too small or too large. Values must be
in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to
2e360 (Base 2). In addition, special values (for example, NaN,
+Infinity, -Infinity) are not supported.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

