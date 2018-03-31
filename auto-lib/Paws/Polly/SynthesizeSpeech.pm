
package Paws::Polly::SynthesizeSpeech;
  use Moose;
  has LexiconNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OutputFormat => (is => 'ro', isa => 'Str', required => 1);
  has SampleRate => (is => 'ro', isa => 'Str');
  has SpeechMarkTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Text => (is => 'ro', isa => 'Str', required => 1);
  has TextType => (is => 'ro', isa => 'Str');
  has VoiceId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SynthesizeSpeech');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/speech');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Polly::SynthesizeSpeechOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Polly::SynthesizeSpeech - Arguments for method SynthesizeSpeech on Paws::Polly

=head1 DESCRIPTION

This class represents the parameters used for calling the method SynthesizeSpeech on the 
Amazon Polly service. Use the attributes of this class
as arguments to method SynthesizeSpeech.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SynthesizeSpeech.

As an example:

  $service_obj->SynthesizeSpeech(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 LexiconNames => ArrayRef[Str|Undef]

List of one or more pronunciation lexicon names you want the service to
apply during synthesis. Lexicons are applied only if the language of
the lexicon is the same as the language of the voice. For information
about storing lexicons, see PutLexicon.



=head2 B<REQUIRED> OutputFormat => Str

The format in which the returned output will be encoded. For audio
stream, this will be mp3, ogg_vorbis, or pcm. For speech marks, this
will be json.

Valid values are: C<"json">, C<"mp3">, C<"ogg_vorbis">, C<"pcm">

=head2 SampleRate => Str

The audio frequency specified in Hz.

The valid values for C<mp3> and C<ogg_vorbis> are "8000", "16000", and
"22050". The default value is "22050".

Valid values for C<pcm> are "8000" and "16000" The default value is
"16000".



=head2 SpeechMarkTypes => ArrayRef[Str|Undef]

The type of speech marks returned for the input text.



=head2 B<REQUIRED> Text => Str

Input text to synthesize. If you specify C<ssml> as the C<TextType>,
follow the SSML format for the input text.



=head2 TextType => Str

Specifies whether the input text is plain text or SSML. The default
value is plain text. For more information, see Using SSML.

Valid values are: C<"ssml">, C<"text">

=head2 B<REQUIRED> VoiceId => Str

Voice ID to use for the synthesis. You can get a list of available
voice IDs by calling the DescribeVoices operation.

Valid values are: C<"Geraint">, C<"Gwyneth">, C<"Mads">, C<"Naja">, C<"Hans">, C<"Marlene">, C<"Nicole">, C<"Russell">, C<"Amy">, C<"Brian">, C<"Emma">, C<"Raveena">, C<"Ivy">, C<"Joanna">, C<"Joey">, C<"Justin">, C<"Kendra">, C<"Kimberly">, C<"Salli">, C<"Conchita">, C<"Enrique">, C<"Miguel">, C<"Penelope">, C<"Chantal">, C<"Celine">, C<"Mathieu">, C<"Dora">, C<"Karl">, C<"Carla">, C<"Giorgio">, C<"Mizuki">, C<"Liv">, C<"Lotte">, C<"Ruben">, C<"Ewa">, C<"Jacek">, C<"Jan">, C<"Maja">, C<"Ricardo">, C<"Vitoria">, C<"Cristiano">, C<"Ines">, C<"Carmen">, C<"Maxim">, C<"Tatyana">, C<"Astrid">, C<"Filiz">, C<"Vicki">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SynthesizeSpeech in L<Paws::Polly>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

