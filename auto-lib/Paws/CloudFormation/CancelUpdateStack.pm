
package Paws::CloudFormation::CancelUpdateStack;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has StackName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelUpdateStack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CancelUpdateStack - Arguments for method CancelUpdateStack on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelUpdateStack on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method CancelUpdateStack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelUpdateStack.

As an example:

  $service_obj->CancelUpdateStack(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier for this C<CancelUpdateStack> request. Specify this
token if you plan to retry requests so that AWS CloudFormation knows
that you're not attempting to cancel an update on a stack with the same
name. You might retry C<CancelUpdateStack> requests to ensure that AWS
CloudFormation successfully received them.



=head2 B<REQUIRED> StackName => Str

The name or the unique stack ID that is associated with the stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelUpdateStack in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

