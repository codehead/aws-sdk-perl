package Paws::Greengrass::ConnectivityInfo;
  use Moose;
  has HostAddress => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Metadata => (is => 'ro', isa => 'Str');
  has PortNumber => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Greengrass::ConnectivityInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Greengrass::ConnectivityInfo object:

  $service_obj->Method(Att1 => { HostAddress => $value, ..., PortNumber => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Greengrass::ConnectivityInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->HostAddress

=head1 DESCRIPTION

Connectivity Info

=head1 ATTRIBUTES


=head2 HostAddress => Str

  Endpoint for the GGC. Can be an IP address or DNS.


=head2 Id => Str

  Element Id for this entry in the list.


=head2 Metadata => Str

  Metadata for this endpoint.


=head2 PortNumber => Int

  Port of the GGC. Usually 8883.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Greengrass>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

