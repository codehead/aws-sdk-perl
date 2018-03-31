
package Paws::StorageGateway::ListFileShares;
  use Moose;
  has GatewayARN => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListFileShares');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::StorageGateway::ListFileSharesOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::ListFileShares - Arguments for method ListFileShares on Paws::StorageGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListFileShares on the 
AWS Storage Gateway service. Use the attributes of this class
as arguments to method ListFileShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListFileShares.

As an example:

  $service_obj->ListFileShares(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 GatewayARN => Str

The Amazon resource Name (ARN) of the gateway whose file shares you
want to list. If this field is not present, all file shares under your
account are listed.



=head2 Limit => Int

The maximum number of file shares to return in the response. The value
must be an integer with a value greater than zero. Optional.



=head2 Marker => Str

Opaque pagination token returned from a previous ListFileShares
operation. If present, C<Marker> specifies where to continue the list
from after a previous call to ListFileShares. Optional.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListFileShares in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

