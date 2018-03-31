
package Paws::CUR::DeleteReportDefinition;
  use Moose;
  has ReportName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReportDefinition');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CUR::DeleteReportDefinitionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CUR::DeleteReportDefinition - Arguments for method DeleteReportDefinition on Paws::CUR

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReportDefinition on the 
AWS Cost and Usage Report Service service. Use the attributes of this class
as arguments to method DeleteReportDefinition.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReportDefinition.

As an example:

  $service_obj->DeleteReportDefinition(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ReportName => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReportDefinition in L<Paws::CUR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

