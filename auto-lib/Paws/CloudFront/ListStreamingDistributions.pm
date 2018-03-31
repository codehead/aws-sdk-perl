
package Paws::CloudFront::ListStreamingDistributions;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListStreamingDistributions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-03-25/streaming-distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListStreamingDistributionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListStreamingDistributions - Arguments for method ListStreamingDistributions on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListStreamingDistributions2017_03_25 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method ListStreamingDistributions2017_03_25.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListStreamingDistributions2017_03_25.

As an example:

  $service_obj->ListStreamingDistributions2017_03_25(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

The value that you provided for the C<Marker> request parameter.



=head2 MaxItems => Str

The value that you provided for the C<MaxItems> request parameter.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListStreamingDistributions2017_03_25 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

