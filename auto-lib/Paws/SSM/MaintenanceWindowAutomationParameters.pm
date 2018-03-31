package Paws::SSM::MaintenanceWindowAutomationParameters;
  use Moose;
  has DocumentVersion => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::AutomationParameterMap');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::MaintenanceWindowAutomationParameters

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::MaintenanceWindowAutomationParameters object:

  $service_obj->Method(Att1 => { DocumentVersion => $value, ..., Parameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::MaintenanceWindowAutomationParameters object:

  $result = $service_obj->Method(...);
  $result->Att1->DocumentVersion

=head1 DESCRIPTION

The parameters for an AUTOMATION task type.

=head1 ATTRIBUTES


=head2 DocumentVersion => Str

  The version of an Automation document to use during task execution.


=head2 Parameters => L<Paws::SSM::AutomationParameterMap>

  The parameters for the AUTOMATION task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

