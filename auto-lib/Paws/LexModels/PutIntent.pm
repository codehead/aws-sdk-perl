
package Paws::LexModels::PutIntent;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum');
  has ConclusionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'conclusionStatement');
  has ConfirmationPrompt => (is => 'ro', isa => 'Paws::LexModels::Prompt', traits => ['NameInRequest'], request_name => 'confirmationPrompt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DialogCodeHook => (is => 'ro', isa => 'Paws::LexModels::CodeHook', traits => ['NameInRequest'], request_name => 'dialogCodeHook');
  has FollowUpPrompt => (is => 'ro', isa => 'Paws::LexModels::FollowUpPrompt', traits => ['NameInRequest'], request_name => 'followUpPrompt');
  has FulfillmentActivity => (is => 'ro', isa => 'Paws::LexModels::FulfillmentActivity', traits => ['NameInRequest'], request_name => 'fulfillmentActivity');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has ParentIntentSignature => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentIntentSignature');
  has RejectionStatement => (is => 'ro', isa => 'Paws::LexModels::Statement', traits => ['NameInRequest'], request_name => 'rejectionStatement');
  has SampleUtterances => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sampleUtterances');
  has Slots => (is => 'ro', isa => 'ArrayRef[Paws::LexModels::Slot]', traits => ['NameInRequest'], request_name => 'slots');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutIntent');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/intents/{name}/versions/$LATEST');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::PutIntentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::PutIntent - Arguments for method PutIntent on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutIntent on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method PutIntent.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutIntent.

As an example:

  $service_obj->PutIntent(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Checksum => Str

Identifies a specific revision of the C<$LATEST> version.

When you create a new intent, leave the C<checksum> field blank. If you
specify a checksum you get a C<BadRequestException> exception.

When you want to update a intent, set the C<checksum> field to the
checksum of the most recent revision of the C<$LATEST> version. If you
don't specify the C< checksum> field, or if the checksum does not match
the C<$LATEST> version, you get a C<PreconditionFailedException>
exception.



=head2 ConclusionStatement => L<Paws::LexModels::Statement>

The statement that you want Amazon Lex to convey to the user after the
intent is successfully fulfilled by the Lambda function.

This element is relevant only if you provide a Lambda function in the
C<fulfillmentActivity>. If you return the intent to the client
application, you can't specify this element.

The C<followUpPrompt> and C<conclusionStatement> are mutually
exclusive. You can specify only one.



=head2 ConfirmationPrompt => L<Paws::LexModels::Prompt>

Prompts the user to confirm the intent. This question should have a yes
or no answer.

Amazon Lex uses this prompt to ensure that the user acknowledges that
the intent is ready for fulfillment. For example, with the
C<OrderPizza> intent, you might want to confirm that the order is
correct before placing it. For other intents, such as intents that
simply respond to user questions, you might not need to ask the user
for confirmation before providing the information.

You you must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 Description => Str

A description of the intent.



=head2 DialogCodeHook => L<Paws::LexModels::CodeHook>

Specifies a Lambda function to invoke for each user input. You can
invoke this Lambda function to personalize user interaction.

For example, suppose your bot determines that the user is John. Your
Lambda function might retrieve John's information from a backend
database and prepopulate some of the values. For example, if you find
that John is gluten intolerant, you might set the corresponding intent
slot, C<GlutenIntolerant>, to true. You might find John's phone number
and set the corresponding session attribute.



=head2 FollowUpPrompt => L<Paws::LexModels::FollowUpPrompt>

Amazon Lex uses this prompt to solicit additional activity after
fulfilling an intent. For example, after the C<OrderPizza> intent is
fulfilled, you might prompt the user to order a drink.

The action that Amazon Lex takes depends on the user's response, as
follows:

=over

=item *

If the user says "Yes" it responds with the clarification prompt that
is configured for the bot.

=item *

if the user says "Yes" and continues with an utterance that triggers an
intent it starts a conversation for the intent.

=item *

If the user says "No" it responds with the rejection statement
configured for the the follow-up prompt.

=item *

If it doesn't recognize the utterance it repeats the follow-up prompt
again.

=back

The C<followUpPrompt> field and the C<conclusionStatement> field are
mutually exclusive. You can specify only one.



=head2 FulfillmentActivity => L<Paws::LexModels::FulfillmentActivity>

Required. Describes how the intent is fulfilled. For example, after a
user provides all of the information for a pizza order,
C<fulfillmentActivity> defines how the bot places an order with a local
pizza store.

You might configure Amazon Lex to return all of the intent information
to the client application, or direct it to invoke a Lambda function
that can process the intent (for example, place an order with a
pizzeria).



=head2 B<REQUIRED> Name => Str

The name of the intent. The name is I<not> case sensitive.

The name can't match a built-in intent name, or a built-in intent name
with "AMAZON." removed. For example, because there is a built-in intent
called C<AMAZON.HelpIntent>, you can't create a custom intent called
C<HelpIntent>.

For a list of built-in intents, see Standard Built-in Intents in the
I<Alexa Skills Kit>.



=head2 ParentIntentSignature => Str

A unique identifier for the built-in intent to base this intent on. To
find the signature for an intent, see Standard Built-in Intents in the
I<Alexa Skills Kit>.



=head2 RejectionStatement => L<Paws::LexModels::Statement>

When the user answers "no" to the question defined in
C<confirmationPrompt>, Amazon Lex responds with this statement to
acknowledge that the intent was canceled.

You must provide both the C<rejectionStatement> and the
C<confirmationPrompt>, or neither.



=head2 SampleUtterances => ArrayRef[Str|Undef]

An array of utterances (strings) that a user might say to signal the
intent. For example, "I want {PizzaSize} pizza", "Order {Quantity}
{PizzaSize} pizzas".

In each utterance, a slot name is enclosed in curly braces.



=head2 Slots => ArrayRef[L<Paws::LexModels::Slot>]

An array of intent slots. At runtime, Amazon Lex elicits required slot
values from the user using prompts defined in the slots. For more
information, see how-it-works.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutIntent in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

