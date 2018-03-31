
package Paws::LexModels::GetUtterancesView;
  use Moose;
  has BotName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'botName', required => 1);
  has BotVersions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'botVersions', required => 1);
  has StatusType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'statusType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUtterancesView');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/bots/{botname}/utterances?view=aggregation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetUtterancesViewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetUtterancesView - Arguments for method GetUtterancesView on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetUtterancesView on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method GetUtterancesView.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetUtterancesView.

As an example:

  $service_obj->GetUtterancesView(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> BotName => Str

The name of the bot for which utterance information should be returned.



=head2 B<REQUIRED> BotVersions => ArrayRef[Str|Undef]

An array of bot versions for which utterance information should be
returned. The limit is 5 versions per request.



=head2 B<REQUIRED> StatusType => Str

To return utterances that were recognized and handled, useC<Detected>.
To return utterances that were not recognized, use C<Missed>.

Valid values are: C<"Detected">, C<"Missed">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetUtterancesView in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

