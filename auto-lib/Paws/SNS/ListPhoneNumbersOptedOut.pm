
package Paws::SNS::ListPhoneNumbersOptedOut;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPhoneNumbersOptedOut');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListPhoneNumbersOptedOutResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListPhoneNumbersOptedOutResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SNS::ListPhoneNumbersOptedOut - Arguments for method ListPhoneNumbersOptedOut on Paws::SNS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPhoneNumbersOptedOut on the 
Amazon Simple Notification Service service. Use the attributes of this class
as arguments to method ListPhoneNumbersOptedOut.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPhoneNumbersOptedOut.

As an example:

  $service_obj->ListPhoneNumbersOptedOut(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 NextToken => Str

A C<NextToken> string is used when you call the
C<ListPhoneNumbersOptedOut> action to retrieve additional records that
are available after the first page of results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPhoneNumbersOptedOut in L<Paws::SNS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

