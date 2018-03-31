
package Paws::DS::DescribeEventTopics;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str');
  has TopicNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventTopics');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DS::DescribeEventTopicsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DS::DescribeEventTopics - Arguments for method DescribeEventTopics on Paws::DS

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventTopics on the 
AWS Directory Service service. Use the attributes of this class
as arguments to method DescribeEventTopics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventTopics.

As an example:

  $service_obj->DescribeEventTopics(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DirectoryId => Str

The Directory ID for which to get the list of associated SNS topics. If
this member is null, associations for all Directory IDs are returned.



=head2 TopicNames => ArrayRef[Str|Undef]

A list of SNS topic names for which to obtain the information. If this
member is null, all associations for the specified Directory ID are
returned.

An empty list results in an C<InvalidParameterException> being thrown.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventTopics in L<Paws::DS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

