
package Paws::StorageGateway::CreateTapeWithBarcode;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str', required => 1);
  has TapeBarcode => (is => 'ro', isa => 'Str', required => 1);
  has TapeSizeInBytes => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTapeWithBarcode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::CreateTapeWithBarcodeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::CreateTapeWithBarcode - Arguments for method CreateTapeWithBarcode on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTapeWithBarcode on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method CreateTapeWithBarcode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTapeWithBarcode.

As an example:

  $service_obj->CreateTapeWithBarcode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> GatewayARN => Str

The unique Amazon Resource Name (ARN) that represents the gateway to
associate the virtual tape with. Use the ListGateways operation to
return a list of gateways for your account and region.



=head2 B<REQUIRED> TapeBarcode => Str

The barcode that you want to assign to the tape.

Barcodes cannot be reused. This includes barcodes used for tapes that
have been deleted.



=head2 B<REQUIRED> TapeSizeInBytes => Int

The size, in bytes, of the virtual tape that you want to create.

The size must be aligned by gigabyte (1024*1024*1024 byte).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTapeWithBarcode in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

