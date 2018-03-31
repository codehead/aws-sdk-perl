
package Paws::Rekognition::ListCollections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCollections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Rekognition::ListCollectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::ListCollections - Arguments for method ListCollections on Paws::Rekognition

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCollections on the 
Amazon Rekognition service. Use the attributes of this class
as arguments to method ListCollections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCollections.

As an example:

  $service_obj->ListCollections(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

Maximum number of collection IDs to return.



=head2 NextToken => Str

Pagination token from the previous response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCollections in L<Paws::Rekognition>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

