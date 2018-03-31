
package Paws::MTurk::NotifyWorkers;
  use Moose;
  has MessageText => (is => 'ro', isa => 'Str', required => 1);
  has Subject => (is => 'ro', isa => 'Str', required => 1);
  has WorkerIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'NotifyWorkers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::NotifyWorkersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::NotifyWorkers - Arguments for method NotifyWorkers on Paws::MTurk

=head1 DESCRIPTION

This class represents the parameters used for calling the method NotifyWorkers on the 
Amazon Mechanical Turk service. Use the attributes of this class
as arguments to method NotifyWorkers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to NotifyWorkers.

As an example:

  $service_obj->NotifyWorkers(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MessageText => Str

The text of the email message to send. Can include up to 4,096
characters



=head2 B<REQUIRED> Subject => Str

The subject line of the email message to send. Can include up to 200
characters.



=head2 B<REQUIRED> WorkerIds => ArrayRef[Str|Undef]

A list of Worker IDs you wish to notify. You can notify upto 100
Workers at a time.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method NotifyWorkers in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

