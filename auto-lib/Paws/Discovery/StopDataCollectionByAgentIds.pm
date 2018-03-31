
package Paws::Discovery::StopDataCollectionByAgentIds;
  use Moose;
  has AgentIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'agentIds' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopDataCollectionByAgentIds');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StopDataCollectionByAgentIdsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StopDataCollectionByAgentIds - Arguments for method StopDataCollectionByAgentIds on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopDataCollectionByAgentIds on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method StopDataCollectionByAgentIds.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopDataCollectionByAgentIds.

As an example:

  $service_obj->StopDataCollectionByAgentIds(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AgentIds => ArrayRef[Str|Undef]

The IDs of the agents or connectors from which to stop collecting data.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopDataCollectionByAgentIds in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

