
package Paws::Lightsail::PutInstancePublicPorts;
  use Moose;
  has InstanceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'instanceName' , required => 1);
  has PortInfos => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::PortInfo]', traits => ['NameInRequest'], request_name => 'portInfos' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutInstancePublicPorts');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::PutInstancePublicPortsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::PutInstancePublicPorts - Arguments for method PutInstancePublicPorts on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutInstancePublicPorts on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method PutInstancePublicPorts.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutInstancePublicPorts.

As an example:

  $service_obj->PutInstancePublicPorts(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> InstanceName => Str

The Lightsail instance name of the public port(s) you are setting.



=head2 B<REQUIRED> PortInfos => ArrayRef[L<Paws::Lightsail::PortInfo>]

Specifies information about the public port(s).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutInstancePublicPorts in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

