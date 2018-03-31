
package Paws::CloudDirectory::GetSchemaAsJson;
  use Moose;
  has SchemaArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSchemaAsJson');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/schema/json');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::GetSchemaAsJsonResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::GetSchemaAsJson - Arguments for method GetSchemaAsJson on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSchemaAsJson on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method GetSchemaAsJson.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSchemaAsJson.

As an example:

  $service_obj->GetSchemaAsJson(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> SchemaArn => Str

The ARN of the schema to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSchemaAsJson in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

