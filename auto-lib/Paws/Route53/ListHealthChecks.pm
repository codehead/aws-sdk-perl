
package Paws::Route53::ListHealthChecks;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'maxitems', traits => ['ParamInQuery']);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListHealthChecks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/healthcheck');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListHealthChecksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListHealthChecks - Arguments for method ListHealthChecks on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListHealthChecks on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method ListHealthChecks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListHealthChecks.

As an example:

  $service_obj->ListHealthChecks(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

If the value of C<IsTruncated> in the previous response was C<true>,
you have more health checks. To get another group, submit another
C<ListHealthChecks> request.

For the value of C<marker>, specify the value of C<NextMarker> from the
previous response, which is the ID of the first health check that
Amazon Route 53 will return if you submit another request.

If the value of C<IsTruncated> in the previous response was C<false>,
there are no more health checks to get.



=head2 MaxItems => Str

The maximum number of health checks that you want C<ListHealthChecks>
to return in response to the current request. Amazon Route 53 returns a
maximum of 100 items. If you set C<MaxItems> to a value greater than
100, Amazon Route 53 returns only the first 100 health checks.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListHealthChecks in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

