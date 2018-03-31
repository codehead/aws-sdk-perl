
package Paws::CloudDirectory::AttachToIndex;
  use Moose;
  has DirectoryArn => (is => 'ro', isa => 'Str', traits => ['ParamInHeader'], header_name => 'x-amz-data-partition', required => 1);
  has IndexReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);
  has TargetReference => (is => 'ro', isa => 'Paws::CloudDirectory::ObjectReference', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AttachToIndex');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/amazonclouddirectory/2017-01-11/index/attach');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudDirectory::AttachToIndexResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudDirectory::AttachToIndex - Arguments for method AttachToIndex on Paws::CloudDirectory

=head1 DESCRIPTION

This class represents the parameters used for calling the method AttachToIndex on the 
Amazon CloudDirectory service. Use the attributes of this class
as arguments to method AttachToIndex.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AttachToIndex.

As an example:

  $service_obj->AttachToIndex(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryArn => Str

The Amazon Resource Name (ARN) of the directory where the object and
index exist.



=head2 B<REQUIRED> IndexReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the index that you are attaching the object to.



=head2 B<REQUIRED> TargetReference => L<Paws::CloudDirectory::ObjectReference>

A reference to the object that you are attaching to the index.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AttachToIndex in L<Paws::CloudDirectory>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

