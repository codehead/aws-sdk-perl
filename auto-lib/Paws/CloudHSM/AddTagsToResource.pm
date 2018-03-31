
package Paws::CloudHSM::AddTagsToResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSM::AddTagsToResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSM::AddTagsToResource - Arguments for method AddTagsToResource on Paws::CloudHSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the 
Amazon CloudHSM service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

As an example:

  $service_obj->AddTagsToResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the AWS CloudHSM resource to tag.



=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::CloudHSM::Tag>]

One or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::CloudHSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

