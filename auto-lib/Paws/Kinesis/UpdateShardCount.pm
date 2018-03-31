
package Paws::Kinesis::UpdateShardCount;
  use Moose;
  has ScalingType => (is => 'ro', isa => 'Str', required => 1);
  has StreamName => (is => 'ro', isa => 'Str', required => 1);
  has TargetShardCount => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateShardCount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kinesis::UpdateShardCountOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kinesis::UpdateShardCount - Arguments for method UpdateShardCount on Paws::Kinesis

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateShardCount on the 
Amazon Kinesis service. Use the attributes of this class
as arguments to method UpdateShardCount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateShardCount.

As an example:

  $service_obj->UpdateShardCount(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ScalingType => Str

The scaling type. Uniform scaling creates shards of equal size.

Valid values are: C<"UNIFORM_SCALING">

=head2 B<REQUIRED> StreamName => Str

The name of the stream.



=head2 B<REQUIRED> TargetShardCount => Int

The new number of shards.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateShardCount in L<Paws::Kinesis>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

