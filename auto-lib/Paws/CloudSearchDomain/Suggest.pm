
package Paws::CloudSearchDomain::Suggest;
  use Moose;
  has Query => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'query', required => 1);
  has Size => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'size');
  has Suggester => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'suggester', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'Suggest');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-01-01/suggest?format=sdk&pretty=true');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudSearchDomain::SuggestResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudSearchDomain::Suggest - Arguments for method Suggest on Paws::CloudSearchDomain

=head1 DESCRIPTION

This class represents the parameters used for calling the method Suggest on the 
Amazon CloudSearch Domain service. Use the attributes of this class
as arguments to method Suggest.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to Suggest.

As an example:

  $service_obj->Suggest(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Query => Str

Specifies the string for which you want to get suggestions.



=head2 Size => Int

Specifies the maximum number of suggestions to return.



=head2 B<REQUIRED> Suggester => Str

Specifies the name of the suggester to use to find suggested matches.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method Suggest in L<Paws::CloudSearchDomain>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

