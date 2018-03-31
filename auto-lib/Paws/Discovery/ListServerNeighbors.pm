
package Paws::Discovery::ListServerNeighbors;
  use Moose;
  has ConfigurationId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configurationId' , required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NeighborConfigurationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'neighborConfigurationIds' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PortInformationNeeded => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'portInformationNeeded' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListServerNeighbors');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::ListServerNeighborsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::ListServerNeighbors - Arguments for method ListServerNeighbors on Paws::Discovery

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListServerNeighbors on the 
AWS Application Discovery Service service. Use the attributes of this class
as arguments to method ListServerNeighbors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListServerNeighbors.

As an example:

  $service_obj->ListServerNeighbors(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationId => Str

Configuration ID of the server for which neighbors are being listed.



=head2 MaxResults => Int

Maximum number of results to return in a single page of output.



=head2 NeighborConfigurationIds => ArrayRef[Str|Undef]

List of configuration IDs to test for one-hop-away.



=head2 NextToken => Str

Token to retrieve the next set of results. For example, if you
previously specified 100 IDs for
C<ListServerNeighborsRequest$neighborConfigurationIds> but set
C<ListServerNeighborsRequest$maxResults> to 10, you received a set of
10 results along with a token. Use that token in this query to get the
next set of 10.



=head2 PortInformationNeeded => Bool

Flag to indicate if port and protocol information is needed as part of
the response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListServerNeighbors in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

