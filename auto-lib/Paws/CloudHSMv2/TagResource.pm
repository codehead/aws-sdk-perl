
package Paws::CloudHSMv2::TagResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has TagList => (is => 'ro', isa => 'ArrayRef[Paws::CloudHSMv2::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'TagResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudHSMv2::TagResourceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudHSMv2::TagResource - Arguments for method TagResource on Paws::CloudHSMv2

=head1 DESCRIPTION

This class represents the parameters used for calling the method TagResource on the 
AWS CloudHSM V2 service. Use the attributes of this class
as arguments to method TagResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to TagResource.

As an example:

  $service_obj->TagResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The cluster identifier (ID) for the cluster that you are tagging. To
find the cluster ID, use DescribeClusters.



=head2 B<REQUIRED> TagList => ArrayRef[L<Paws::CloudHSMv2::Tag>]

A list of one or more tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method TagResource in L<Paws::CloudHSMv2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

