
package Paws::CodeStar::DeleteProject;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has DeleteStack => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'deleteStack' );
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::DeleteProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::DeleteProject - Arguments for method DeleteProject on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProject on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method DeleteProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProject.

As an example:

  $service_obj->DeleteProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested project deletion. This token can be used to repeat the
request.



=head2 DeleteStack => Bool

Whether to send a delete request for the primary stack in AWS
CloudFormation originally used to generate the project and its
resources. This option will delete all AWS resources for the project
(except for any buckets in Amazon S3) as well as deleting the project
itself. Recommended for most use cases.



=head2 B<REQUIRED> Id => Str

The ID of the project to be deleted in AWS CodeStar.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProject in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

