
package Paws::Lightsail::GetOperationsForResource;
  use Moose;
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetOperationsForResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetOperationsForResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetOperationsForResource - Arguments for method GetOperationsForResource on Paws::Lightsail

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetOperationsForResource on the 
Amazon Lightsail service. Use the attributes of this class
as arguments to method GetOperationsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetOperationsForResource.

As an example:

  $service_obj->GetOperationsForResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 PageToken => Str

A token used for advancing to the next page of results from your get
operations for resource request.



=head2 B<REQUIRED> ResourceName => Str

The name of the resource for which you are requesting information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetOperationsForResource in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

