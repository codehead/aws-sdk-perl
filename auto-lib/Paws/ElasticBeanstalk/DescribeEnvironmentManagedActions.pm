
package Paws::ElasticBeanstalk::DescribeEnvironmentManagedActions;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentManagedActions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::DescribeEnvironmentManagedActionsResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeEnvironmentManagedActionsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::DescribeEnvironmentManagedActions - Arguments for method DescribeEnvironmentManagedActions on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEnvironmentManagedActions on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method DescribeEnvironmentManagedActions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEnvironmentManagedActions.

As an example:

  $service_obj->DescribeEnvironmentManagedActions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EnvironmentId => Str

The environment ID of the target environment.



=head2 EnvironmentName => Str

The name of the target environment.



=head2 Status => Str

To show only actions with a particular status, specify a status.

Valid values are: C<"Scheduled">, C<"Pending">, C<"Running">, C<"Unknown">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEnvironmentManagedActions in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

