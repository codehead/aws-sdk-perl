
package Paws::CodeBuild::UpdateProject;
  use Moose;
  has Artifacts => (is => 'ro', isa => 'Paws::CodeBuild::ProjectArtifacts', traits => ['NameInRequest'], request_name => 'artifacts' );
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has EncryptionKey => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'encryptionKey' );
  has Environment => (is => 'ro', isa => 'Paws::CodeBuild::ProjectEnvironment', traits => ['NameInRequest'], request_name => 'environment' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole' );
  has Source => (is => 'ro', isa => 'Paws::CodeBuild::ProjectSource', traits => ['NameInRequest'], request_name => 'source' );
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::Tag]', traits => ['NameInRequest'], request_name => 'tags' );
  has TimeoutInMinutes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'timeoutInMinutes' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateProject');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeBuild::UpdateProjectOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateProject - Arguments for method UpdateProject on Paws::CodeBuild

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateProject on the 
AWS CodeBuild service. Use the attributes of this class
as arguments to method UpdateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateProject.

As an example:

  $service_obj->UpdateProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Artifacts => L<Paws::CodeBuild::ProjectArtifacts>

Information to be changed about the build output artifacts for the
build project.



=head2 Description => Str

A new or replacement description of the build project.



=head2 EncryptionKey => Str

The replacement AWS Key Management Service (AWS KMS) customer master
key (CMK) to be used for encrypting the build output artifacts.

You can specify either the CMK's Amazon Resource Name (ARN) or, if
available, the CMK's alias (using the format C<alias/I<alias-name> >).



=head2 Environment => L<Paws::CodeBuild::ProjectEnvironment>

Information to be changed about the build environment for the build
project.



=head2 B<REQUIRED> Name => Str

The name of the build project.

You cannot change a build project's name.



=head2 ServiceRole => Str

The replacement ARN of the AWS Identity and Access Management (IAM)
role that enables AWS CodeBuild to interact with dependent AWS services
on behalf of the AWS account.



=head2 Source => L<Paws::CodeBuild::ProjectSource>

Information to be changed about the build input source code for the
build project.



=head2 Tags => ArrayRef[L<Paws::CodeBuild::Tag>]

The replacement set of tags for this build project.

These tags are available for use by AWS services that support AWS
CodeBuild build project tags.



=head2 TimeoutInMinutes => Int

The replacement value in minutes, from 5 to 480 (8 hours), for AWS
CodeBuild to wait before timing out any related build that did not get
marked as completed.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateProject in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

