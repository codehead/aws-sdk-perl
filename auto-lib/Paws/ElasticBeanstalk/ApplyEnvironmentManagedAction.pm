
package Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction;
  use Moose;
  has ActionId => (is => 'ro', isa => 'Str', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str');
  has EnvironmentName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ApplyEnvironmentManagedAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::ApplyEnvironmentManagedActionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ApplyEnvironmentManagedActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::ApplyEnvironmentManagedAction - Arguments for method ApplyEnvironmentManagedAction on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method ApplyEnvironmentManagedAction on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method ApplyEnvironmentManagedAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ApplyEnvironmentManagedAction.

As an example:

  $service_obj->ApplyEnvironmentManagedAction(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ActionId => Str

The action ID of the scheduled managed action to execute.



=head2 EnvironmentId => Str

The environment ID of the target environment.



=head2 EnvironmentName => Str

The name of the target environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ApplyEnvironmentManagedAction in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

