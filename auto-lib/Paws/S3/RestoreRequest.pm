package Paws::S3::RestoreRequest;
  use Moose;
  has Days => (is => 'ro', isa => 'Int', required => 1);
  has GlacierJobParameters => (is => 'ro', isa => 'Paws::S3::GlacierJobParameters');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::RestoreRequest

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::S3::RestoreRequest object:

  $service_obj->Method(Att1 => { Days => $value, ..., GlacierJobParameters => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::S3::RestoreRequest object:

  $result = $service_obj->Method(...);
  $result->Att1->Days

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 B<REQUIRED> Days => Int

  Lifetime of the active copy in days


=head2 GlacierJobParameters => L<Paws::S3::GlacierJobParameters>

  Glacier related prameters pertaining to this job.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::S3>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

