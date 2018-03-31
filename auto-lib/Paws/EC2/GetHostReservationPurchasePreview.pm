
package Paws::EC2::GetHostReservationPurchasePreview;
  use Moose;
  has HostIdSet => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has OfferingId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetHostReservationPurchasePreview');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::GetHostReservationPurchasePreviewResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::GetHostReservationPurchasePreview - Arguments for method GetHostReservationPurchasePreview on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetHostReservationPurchasePreview on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method GetHostReservationPurchasePreview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetHostReservationPurchasePreview.

As an example:

  $service_obj->GetHostReservationPurchasePreview(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostIdSet => ArrayRef[Str|Undef]

The ID/s of the Dedicated Host/s that the reservation will be
associated with.



=head2 B<REQUIRED> OfferingId => Str

The offering ID of the reservation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetHostReservationPurchasePreview in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

