package Paws::Glacier::VaultLockPolicy;
  use Moose;
  has Policy => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::VaultLockPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glacier::VaultLockPolicy object:

  $service_obj->Method(Att1 => { Policy => $value, ..., Policy => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glacier::VaultLockPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->Policy

=head1 DESCRIPTION

Contains the vault lock policy.

=head1 ATTRIBUTES


=head2 Policy => Str

  The vault lock policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glacier>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

