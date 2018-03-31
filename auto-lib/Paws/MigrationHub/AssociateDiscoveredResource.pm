
package Paws::MigrationHub::AssociateDiscoveredResource;
  use Moose;
  has DiscoveredResource => (is => 'ro', isa => 'Paws::MigrationHub::DiscoveredResource', required => 1);
  has DryRun => (is => 'ro', isa => 'Bool');
  has MigrationTaskName => (is => 'ro', isa => 'Str', required => 1);
  has ProgressUpdateStream => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateDiscoveredResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::AssociateDiscoveredResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::AssociateDiscoveredResource - Arguments for method AssociateDiscoveredResource on Paws::MigrationHub

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateDiscoveredResource on the 
AWS Migration Hub service. Use the attributes of this class
as arguments to method AssociateDiscoveredResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateDiscoveredResource.

As an example:

  $service_obj->AssociateDiscoveredResource(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> DiscoveredResource => L<Paws::MigrationHub::DiscoveredResource>

Object representing a Resource.



=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> MigrationTaskName => Str

The identifier given to the MigrationTask.



=head2 B<REQUIRED> ProgressUpdateStream => Str

The name of the ProgressUpdateStream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateDiscoveredResource in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

