
package Paws::ES::ListElasticsearchVersions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListElasticsearchVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::ListElasticsearchVersionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListElasticsearchVersions - Arguments for method ListElasticsearchVersions on Paws::ES

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListElasticsearchVersions on the 
Amazon Elasticsearch Service service. Use the attributes of this class
as arguments to method ListElasticsearchVersions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListElasticsearchVersions.

As an example:

  $service_obj->ListElasticsearchVersions(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 MaxResults => Int

Set this value to limit the number of results returned. Value provided
must be greater than 10 else it wont be honored.



=head2 NextToken => Str






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListElasticsearchVersions in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

