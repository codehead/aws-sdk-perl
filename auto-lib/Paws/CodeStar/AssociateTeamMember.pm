
package Paws::CodeStar::AssociateTeamMember;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken' );
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId' , required => 1);
  has ProjectRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectRole' , required => 1);
  has RemoteAccessAllowed => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'remoteAccessAllowed' );
  has UserArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userArn' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateTeamMember');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeStar::AssociateTeamMemberResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeStar::AssociateTeamMember - Arguments for method AssociateTeamMember on Paws::CodeStar

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateTeamMember on the 
AWS CodeStar service. Use the attributes of this class
as arguments to method AssociateTeamMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateTeamMember.

As an example:

  $service_obj->AssociateTeamMember(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A user- or system-generated token that identifies the entity that
requested the team member association to the project. This token can be
used to repeat the request.



=head2 B<REQUIRED> ProjectId => Str

The ID of the project to which you will add the IAM user.



=head2 B<REQUIRED> ProjectRole => Str

The AWS CodeStar project role that will apply to this user. This role
determines what actions a user can take in an AWS CodeStar project.



=head2 RemoteAccessAllowed => Bool

Whether the team member is allowed to use an SSH public/private key
pair to remotely access project resources, for example Amazon EC2
instances.



=head2 B<REQUIRED> UserArn => Str

The Amazon Resource Name (ARN) for the IAM user you want to add to the
AWS CodeStar project.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateTeamMember in L<Paws::CodeStar>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

