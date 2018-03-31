
package Paws::Config::GetComplianceSummaryByResourceType;
  use Moose;
  has ResourceTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetComplianceSummaryByResourceType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Config::GetComplianceSummaryByResourceTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetComplianceSummaryByResourceType - Arguments for method GetComplianceSummaryByResourceType on Paws::Config

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetComplianceSummaryByResourceType on the 
AWS Config service. Use the attributes of this class
as arguments to method GetComplianceSummaryByResourceType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetComplianceSummaryByResourceType.

As an example:

  $service_obj->GetComplianceSummaryByResourceType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ResourceTypes => ArrayRef[Str|Undef]

Specify one or more resource types to get the number of resources that
are compliant and the number that are noncompliant for each resource
type.

For this request, you can specify an AWS resource type such as
C<AWS::EC2::Instance>, and you can specify that the resource type is an
AWS account by specifying C<AWS::::Account>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetComplianceSummaryByResourceType in L<Paws::Config>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

