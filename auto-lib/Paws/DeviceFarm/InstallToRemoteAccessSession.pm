
package Paws::DeviceFarm::InstallToRemoteAccessSession;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn' , required => 1);
  has RemoteAccessSessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'remoteAccessSessionArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'InstallToRemoteAccessSession');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DeviceFarm::InstallToRemoteAccessSessionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::InstallToRemoteAccessSession - Arguments for method InstallToRemoteAccessSession on Paws::DeviceFarm

=head1 DESCRIPTION

This class represents the parameters used for calling the method InstallToRemoteAccessSession on the 
AWS Device Farm service. Use the attributes of this class
as arguments to method InstallToRemoteAccessSession.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to InstallToRemoteAccessSession.

As an example:

  $service_obj->InstallToRemoteAccessSession(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

The Amazon Resource Name (ARN) of the app about which you are
requesting information.



=head2 B<REQUIRED> RemoteAccessSessionArn => Str

The Amazon Resource Name (ARN) of the remote access session about which
you are requesting information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method InstallToRemoteAccessSession in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

