package Paws::Pinpoint::SendUsersMessageRequest;
  use Moose;
  has Context => (is => 'ro', isa => 'Paws::Pinpoint::MapOf__string');
  has MessageConfiguration => (is => 'ro', isa => 'Paws::Pinpoint::DirectMessageConfiguration');
  has RequestId => (is => 'ro', isa => 'Str');
  has Users => (is => 'ro', isa => 'Paws::Pinpoint::MapOfEndpointSendConfiguration');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Pinpoint::SendUsersMessageRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Pinpoint::SendUsersMessageRequest object:

  $service_obj->Method(Att1 => { Context => $value, ..., Users => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Pinpoint::SendUsersMessageRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Context

=head1 DESCRIPTION

Send message request.

=head1 ATTRIBUTES


=head2 Context => L<Paws::Pinpoint::MapOf__string>

  A map of custom attributes to attributes to be attached to the message.
This payload is added to the push notification's 'data.pinpoint' object
or added to the email/sms delivery receipt event attributes.


=head2 MessageConfiguration => L<Paws::Pinpoint::DirectMessageConfiguration>

  Message configuration.


=head2 RequestId => Str

  Original request Id for which this message is delivered.


=head2 Users => L<Paws::Pinpoint::MapOfEndpointSendConfiguration>

  A map of destination endpoints, with the EndpointId as the key Endpoint
Message Configuration as the value.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Pinpoint>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

