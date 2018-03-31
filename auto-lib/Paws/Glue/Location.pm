package Paws::Glue::Location;
  use Moose;
  has Jdbc => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenNodeArg]');
  has S3 => (is => 'ro', isa => 'ArrayRef[Paws::Glue::CodeGenNodeArg]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Location

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Location object:

  $service_obj->Method(Att1 => { Jdbc => $value, ..., S3 => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Location object:

  $result = $service_obj->Method(...);
  $result->Att1->Jdbc

=head1 DESCRIPTION

The location of resources.

=head1 ATTRIBUTES


=head2 Jdbc => ArrayRef[L<Paws::Glue::CodeGenNodeArg>]

  A JDBC location.


=head2 S3 => ArrayRef[L<Paws::Glue::CodeGenNodeArg>]

  An AWS S3 location.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

