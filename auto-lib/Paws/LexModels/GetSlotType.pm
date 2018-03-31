
package Paws::LexModels::GetSlotType;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'name', required => 1);
  has Version => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'version', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetSlotType');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slottypes/{name}/versions/{version}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LexModels::GetSlotTypeResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LexModels::GetSlotType - Arguments for method GetSlotType on Paws::LexModels

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetSlotType on the 
Amazon Lex Model Building Service service. Use the attributes of this class
as arguments to method GetSlotType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetSlotType.

As an example:

  $service_obj->GetSlotType(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Name => Str

The name of the slot type. The name is case sensitive.



=head2 B<REQUIRED> Version => Str

The version of the slot type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetSlotType in L<Paws::LexModels>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

