
package Paws::CloudWatch::GetDashboard;
  use Moose;
  has DashboardName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDashboard');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudWatch::GetDashboardOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetDashboardResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::GetDashboard - Arguments for method GetDashboard on Paws::CloudWatch

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDashboard on the 
Amazon CloudWatch service. Use the attributes of this class
as arguments to method GetDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDashboard.

As an example:

  $service_obj->GetDashboard(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 DashboardName => Str

The name of the dashboard to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDashboard in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

