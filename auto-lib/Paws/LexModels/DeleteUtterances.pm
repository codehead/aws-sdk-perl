
package Paws::LexModels::DeleteUtterances;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteUtterances');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botName}/utterances/{userId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::DeleteUtterances - Arguments for method DeleteUtterances on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteUtterances on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method DeleteUtterances.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteUtterances.

As an example:

  $service_obj->DeleteUtterances(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot that stored the utterances.



=head2 B<REQUIRED> UserId => Str

The unique identifier for the user that made the utterances. This is
the user ID that was sent in the PostContent or PostText operation
request that contained the utterance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteUtterances in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

