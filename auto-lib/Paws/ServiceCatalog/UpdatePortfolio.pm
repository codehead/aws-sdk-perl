
package Paws::ServiceCatalog::UpdatePortfolio;
  use Moose;
  has AcceptLanguage => (is => 'ro', isa => 'Str');
  has AddTags => (is => 'ro', isa => 'ArrayRef[Paws::ServiceCatalog::Tag]');
  has Description => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has ProviderName => (is => 'ro', isa => 'Str');
  has RemoveTags => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePortfolio');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ServiceCatalog::UpdatePortfolioOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalog::UpdatePortfolio - Arguments for method UpdatePortfolio on Paws::ServiceCatalog

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePortfolio on the 
AWS Service Catalog service. Use the attributes of this class
as arguments to method UpdatePortfolio.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePortfolio.

As an example:

  $service_obj->UpdatePortfolio(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AcceptLanguage => Str

The language code.

=over

=item *

C<en> - English (default)

=item *

C<jp> - Japanese

=item *

C<zh> - Chinese

=back




=head2 AddTags => ArrayRef[L<Paws::ServiceCatalog::Tag>]

Tags to add to the existing list of tags associated with the portfolio.



=head2 Description => Str

The updated text description of the portfolio.



=head2 DisplayName => Str

The name to use for display purposes.



=head2 B<REQUIRED> Id => Str

The identifier of the portfolio for the update request.



=head2 ProviderName => Str

The updated name of the portfolio provider.



=head2 RemoveTags => ArrayRef[Str|Undef]

Tags to remove from the existing list of tags associated with the
portfolio.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePortfolio in L<Paws::ServiceCatalog>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

