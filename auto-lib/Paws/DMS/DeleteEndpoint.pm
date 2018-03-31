
package Paws::DMS::DeleteEndpoint;
  use Moose;
  has EndpointArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DMS::DeleteEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DeleteEndpoint - Arguments for method DeleteEndpoint on Paws::DMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteEndpoint on the 
AWS Database Migration Service service. Use the attributes of this class
as arguments to method DeleteEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteEndpoint.

As an example:

  $service_obj->DeleteEndpoint(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointArn => Str

The Amazon Resource Name (ARN) string that uniquely identifies the
endpoint.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteEndpoint in L<Paws::DMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

