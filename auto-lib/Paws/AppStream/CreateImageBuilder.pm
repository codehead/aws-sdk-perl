
package Paws::AppStream::CreateImageBuilder;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has DomainJoinInfo => (is => 'ro', isa => 'Paws::AppStream::DomainJoinInfo');
  has EnableDefaultInternetAccess => (is => 'ro', isa => 'Bool');
  has ImageName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceType => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has VpcConfig => (is => 'ro', isa => 'Paws::AppStream::VpcConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateImageBuilder');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppStream::CreateImageBuilderResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::CreateImageBuilder - Arguments for method CreateImageBuilder on Paws::AppStream

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateImageBuilder on the 
Amazon AppStream service. Use the attributes of this class
as arguments to method CreateImageBuilder.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateImageBuilder.

As an example:

  $service_obj->CreateImageBuilder(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Description => Str





=head2 DisplayName => Str





=head2 DomainJoinInfo => L<Paws::AppStream::DomainJoinInfo>





=head2 EnableDefaultInternetAccess => Bool





=head2 B<REQUIRED> ImageName => Str





=head2 B<REQUIRED> InstanceType => Str





=head2 B<REQUIRED> Name => Str





=head2 VpcConfig => L<Paws::AppStream::VpcConfig>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateImageBuilder in L<Paws::AppStream>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

