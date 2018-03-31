
package Paws::KinesisAnalytics::AddApplicationOutput;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', required => 1);
  has CurrentApplicationVersionId => (is => 'ro', isa => 'Int', required => 1);
  has Output => (is => 'ro', isa => 'Paws::KinesisAnalytics::Output', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddApplicationOutput');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KinesisAnalytics::AddApplicationOutputResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::AddApplicationOutput - Arguments for method AddApplicationOutput on Paws::KinesisAnalytics

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddApplicationOutput on the 
Amazon Kinesis Analytics service. Use the attributes of this class
as arguments to method AddApplicationOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddApplicationOutput.

As an example:

  $service_obj->AddApplicationOutput(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

Name of the application to which you want to add the output
configuration.



=head2 B<REQUIRED> CurrentApplicationVersionId => Int

Version of the application to which you want add the output
configuration. You can use the DescribeApplication operation to get the
current application version. If the version specified is not the
current version, the C<ConcurrentModificationException> is returned.



=head2 B<REQUIRED> Output => L<Paws::KinesisAnalytics::Output>

An array of objects, each describing one output configuration. In the
output configuration, you specify the name of an in-application stream,
a destination (that is, an Amazon Kinesis stream or an Amazon Kinesis
Firehose delivery stream), and record the formation to use when writing
to the destination.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddApplicationOutput in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

