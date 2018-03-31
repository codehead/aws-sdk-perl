
package Paws::ELBv2::DescribeAccountLimits;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has PageSize => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimits');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELBv2::DescribeAccountLimitsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeAccountLimitsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::DescribeAccountLimits - Arguments for method DescribeAccountLimits on Paws::ELBv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAccountLimits on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DescribeAccountLimits.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAccountLimits.

As an example:

  $service_obj->DescribeAccountLimits(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Marker => Str

The marker for the next set of results. (You received this marker from
a previous call.)



=head2 PageSize => Int

The maximum number of results to return with this call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAccountLimits in L<Paws::ELBv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

