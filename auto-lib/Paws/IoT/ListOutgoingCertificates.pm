
package Paws::IoT::ListOutgoingCertificates;
  use Moose;
  has AscendingOrder => (is => 'ro', isa => 'Bool', traits => ['ParamInQuery'], query_name => 'ascendingOrder');
  has Marker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'marker');
  has PageSize => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'pageSize');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListOutgoingCertificates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/certificates-out-going');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoT::ListOutgoingCertificatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::ListOutgoingCertificates - Arguments for method ListOutgoingCertificates on Paws::IoT

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListOutgoingCertificates on the 
AWS IoT service. Use the attributes of this class
as arguments to method ListOutgoingCertificates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListOutgoingCertificates.

As an example:

  $service_obj->ListOutgoingCertificates(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AscendingOrder => Bool

Specifies the order for results. If True, the results are returned in
ascending order, based on the creation date.



=head2 Marker => Str

The marker for the next set of results.



=head2 PageSize => Int

The result page size.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListOutgoingCertificates in L<Paws::IoT>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

