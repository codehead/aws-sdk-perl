
package Paws::SSM::GetCommandInvocation;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', required => 1);
  has PluginName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCommandInvocation');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::GetCommandInvocationResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCommandInvocation - Arguments for method GetCommandInvocation on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCommandInvocation on the 
Amazon Simple Systems Manager (SSM) service. Use the attributes of this class
as arguments to method GetCommandInvocation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCommandInvocation.

As an example:

  $service_obj->GetCommandInvocation(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> CommandId => Str

(Required) The parent command ID of the invocation plugin.



=head2 B<REQUIRED> InstanceId => Str

(Required) The ID of the managed instance targeted by the command. A
managed instance can be an Amazon EC2 instance or an instance in your
hybrid environment that is configured for Systems Manager.



=head2 PluginName => Str

(Optional) The name of the plugin for which you want detailed results.
If the document contains only one plugin, the name can be omitted and
the details will be returned.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCommandInvocation in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

