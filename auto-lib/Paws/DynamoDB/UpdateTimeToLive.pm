
package Paws::DynamoDB::UpdateTimeToLive;
  use Moose;
  has TableName => (is => 'ro', isa => 'Str', required => 1);
  has TimeToLiveSpecification => (is => 'ro', isa => 'Paws::DynamoDB::TimeToLiveSpecification', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTimeToLive');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DynamoDB::UpdateTimeToLiveOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateTimeToLive - Arguments for method UpdateTimeToLive on Paws::DynamoDB

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTimeToLive on the 
Amazon DynamoDB service. Use the attributes of this class
as arguments to method UpdateTimeToLive.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTimeToLive.

As an example:

  $service_obj->UpdateTimeToLive(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> TableName => Str

The name of the table to be configured.



=head2 B<REQUIRED> TimeToLiveSpecification => L<Paws::DynamoDB::TimeToLiveSpecification>

Represents the settings used to enable or disable Time to Live for the
specified table.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTimeToLive in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

