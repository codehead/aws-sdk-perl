package Paws::CodeBuild::ProjectEnvironment;
  use Moose;
  has ComputeType => (is => 'ro', isa => 'Str', request_name => 'computeType', traits => ['NameInRequest'], required => 1);
  has EnvironmentVariables => (is => 'ro', isa => 'ArrayRef[Paws::CodeBuild::EnvironmentVariable]', request_name => 'environmentVariables', traits => ['NameInRequest']);
  has Image => (is => 'ro', isa => 'Str', request_name => 'image', traits => ['NameInRequest'], required => 1);
  has PrivilegedMode => (is => 'ro', isa => 'Bool', request_name => 'privilegedMode', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::ProjectEnvironment

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeBuild::ProjectEnvironment object:

  $service_obj->Method(Att1 => { ComputeType => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeBuild::ProjectEnvironment object:

  $result = $service_obj->Method(...);
  $result->Att1->ComputeType

=head1 DESCRIPTION

Information about the build environment of the build project.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ComputeType => Str

  Information about the compute resources the build project will use.
Available values include:

=over

=item *

C<BUILD_GENERAL1_SMALL>: Use up to 3 GB memory and 2 vCPUs for builds.

=item *

C<BUILD_GENERAL1_MEDIUM>: Use up to 7 GB memory and 4 vCPUs for builds.

=item *

C<BUILD_GENERAL1_LARGE>: Use up to 15 GB memory and 8 vCPUs for builds.

=back



=head2 EnvironmentVariables => ArrayRef[L<Paws::CodeBuild::EnvironmentVariable>]

  A set of environment variables to make available to builds for this
build project.


=head2 B<REQUIRED> Image => Str

  The ID of the Docker image to use for this build project.


=head2 PrivilegedMode => Bool

  If set to true, enables running the Docker daemon inside a Docker
container; otherwise, false or not specified (the default). This value
must be set to true only if this build project will be used to build
Docker images, and the specified build environment image is not one
provided by AWS CodeBuild with Docker support. Otherwise, all
associated builds that attempt to interact with the Docker daemon will
fail. Note that you must also start the Docker daemon so that your
builds can interact with it as needed. One way to do this is to
initialize the Docker daemon in the install phase of your build spec by
running the following build commands. (Do not run the following build
commands if the specified build environment image is provided by AWS
CodeBuild with Docker support.)

C<- nohup /usr/local/bin/dockerd --host=unix:///var/run/docker.sock
--host=tcp://0.0.0.0:2375 --storage-driver=overlay& - timeout -t 15 sh
-c "until docker info; do echo .; sleep 1; done">


=head2 B<REQUIRED> Type => Str

  The type of build environment to use for related builds.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeBuild>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

