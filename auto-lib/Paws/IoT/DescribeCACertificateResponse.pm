
package Paws::IoT::DescribeCACertificateResponse;
  use Moose;
  has CertificateDescription => (is => 'ro', isa => 'Paws::IoT::CACertificateDescription', traits => ['NameInRequest'], request_name => 'certificateDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoT::DescribeCACertificateResponse

=head1 ATTRIBUTES


=head2 CertificateDescription => L<Paws::IoT::CACertificateDescription>

The CA certificate description.


=head2 _request_id => Str


=cut

