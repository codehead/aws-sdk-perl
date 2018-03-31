
package Paws::MobileHub::CreateProject;
  use Moose;
  has Contents => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'contents');
  has Name => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'name');
  has Region => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'region');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'snapshotId');

  use MooseX::ClassAttribute;
  class_has _stream_param => (is => 'ro', default => 'Contents');
  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateProject');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MobileHub::CreateProjectResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MobileHub::CreateProject - Arguments for method CreateProject on Paws::MobileHub

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateProject on the 
AWS Mobile service. Use the attributes of this class
as arguments to method CreateProject.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateProject.

As an example:

  $service_obj->CreateProject(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Contents => Str

ZIP or YAML file which contains configuration settings to be used when
creating the project. This may be the contents of the file downloaded
from the URL provided in an export project operation.



=head2 Name => Str

Name of the project.



=head2 Region => Str

Default region where project resources should be created.



=head2 SnapshotId => Str

Unique identifier for an exported snapshot of project configuration.
This snapshot identifier is included in the share URL when a project is
exported.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateProject in L<Paws::MobileHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

