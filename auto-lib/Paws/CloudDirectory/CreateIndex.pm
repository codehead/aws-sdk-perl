
package Paws::CloudDirectory::CreateIndex;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has IsUnique => (is => 'ro', isa => 'Bool', required => 1);
  has LinkName => (is => 'ro', isa => 'Str');
  has OrderedIndexedAttributeList => (is => 'ro', isa => 'ArrayRef[Paws::CloudDirectory::AttributeKey]', required => 1);
  has ParentReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/index');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::CreateIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::CreateIndex - Arguments for method CreateIndex on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateIndex on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method CreateIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateIndex.

As an example:

  $service_obj->CreateIndex(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The ARN of the directory where the index should be created.



=head2 B<REQUIRED> IsUnique => Bool

Indicates whether the attribute that is being indexed has unique values
or not.



=head2 LinkName => Str

The name of the link between the parent object and the index object.



=head2 B<REQUIRED> OrderedIndexedAttributeList => ArrayRef[L<Paws::CloudDirectory::AttributeKey>]

Specifies the attributes that should be indexed on. Currently only a
single attribute is supported.



=head2 ParentReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the parent object that contains the index object.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateIndex in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

