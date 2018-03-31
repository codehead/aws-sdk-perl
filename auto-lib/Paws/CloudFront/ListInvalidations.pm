
package Paws::CloudFront::ListInvalidations;
  use Moose;
  has DistributionId => (is => 'ro', isa => 'Str', uri_name => 'DistributionId', traits => ['ParamInURI'], required => 1);
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListInvalidations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2017-03-25/distribution/{DistributionId}/invalidation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListInvalidationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListInvalidations - Arguments for method ListInvalidations on Paws::CloudFront

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListInvalidations2017_03_25 on the 
Amazon CloudFront service. Use the attributes of this class
as arguments to method ListInvalidations2017_03_25.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListInvalidations2017_03_25.

As an example:

  $service_obj->ListInvalidations2017_03_25(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionId => Str

The distribution's ID.



=head2 Marker => Str

Use this parameter when paginating results to indicate where to begin
in your list of invalidation batches. Because the results are returned
in decreasing order from most recent to oldest, the most recent results
are on the first page, the second page will contain earlier results,
and so on. To get the next page of results, set C<Marker> to the value
of the C<NextMarker> from the current page's response. This value is
the same as the ID of the last invalidation batch on that page.



=head2 MaxItems => Str

The maximum number of invalidation batches that you want in the
response body.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListInvalidations2017_03_25 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

