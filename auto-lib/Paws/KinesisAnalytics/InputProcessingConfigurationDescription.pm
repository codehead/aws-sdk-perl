package Paws::KinesisAnalytics::InputProcessingConfigurationDescription;
  use Moose;
  has InputLambdaProcessorDescription => (is => 'ro', isa => 'Paws::KinesisAnalytics::InputLambdaProcessorDescription');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::InputProcessingConfigurationDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::InputProcessingConfigurationDescription object:

  $service_obj->Method(Att1 => { InputLambdaProcessorDescription => $value, ..., InputLambdaProcessorDescription => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::InputProcessingConfigurationDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->InputLambdaProcessorDescription

=head1 DESCRIPTION

Provides configuration information about an input processor. Currently,
the only input processor available is AWS Lambda.

=head1 ATTRIBUTES


=head2 InputLambdaProcessorDescription => L<Paws::KinesisAnalytics::InputLambdaProcessorDescription>

  Provides configuration information about the associated
InputLambdaProcessorDescription.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

