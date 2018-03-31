
package Paws::OpsWorksCM::DisassociateNode;
  use Moose;
  has EngineAttributes => (is => 'ro', isa => 'ArrayRef[Paws::OpsWorksCM::EngineAttribute]');
  has NodeName => (is => 'ro', isa => 'Str', required => 1);
  has ServerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateNode');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpsWorksCM::DisassociateNodeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorksCM::DisassociateNode - Arguments for method DisassociateNode on Paws::OpsWorksCM

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateNode on the 
AWS OpsWorks for Chef Automate service. Use the attributes of this class
as arguments to method DisassociateNode.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateNode.

As an example:

  $service_obj->DisassociateNode(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EngineAttributes => ArrayRef[L<Paws::OpsWorksCM::EngineAttribute>]

Engine attributes used for disassociating the node.

B<Attributes accepted in a DisassociateNode request:>

=over

=item *

C<CHEF_ORGANIZATION>: The Chef organization with which the node was
associated. By default only one organization named C<default> can
exist.

=back




=head2 B<REQUIRED> NodeName => Str

The name of the Chef client node.



=head2 B<REQUIRED> ServerName => Str

The name of the server from which to disassociate the node.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateNode in L<Paws::OpsWorksCM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

