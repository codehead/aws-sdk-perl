
package Paws::CloudFormation::CreateStackSet;
  use Moose;
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has StackSetName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str');
  has TemplateURL => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackSet');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackSetOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackSetResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackSet - Arguments for method CreateStackSet on Paws::CloudFormation

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackSet on the 
AWS CloudFormation service. Use the attributes of this class
as arguments to method CreateStackSet.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackSet.

As an example:

  $service_obj->CreateStackSet(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 Capabilities => ArrayRef[Str|Undef]

A list of values that you must specify before AWS CloudFormation can
create certain stack sets. Some stack set templates might include
resources that can affect permissions in your AWS accountE<mdash>for
example, by creating new AWS Identity and Access Management (IAM)
users. For those stack sets, you must explicitly acknowledge their
capabilities by specifying this parameter.

The only valid values are CAPABILITY_IAM and CAPABILITY_NAMED_IAM. The
following resources require you to specify this parameter:

=over

=item *

AWS::IAM::AccessKey

=item *

AWS::IAM::Group

=item *

AWS::IAM::InstanceProfile

=item *

AWS::IAM::Policy

=item *

AWS::IAM::Role

=item *

AWS::IAM::User

=item *

AWS::IAM::UserToGroupAddition

=back

If your stack template contains these resources, we recommend that you
review all permissions that are associated with them and edit their
permissions if necessary.

If you have IAM resources, you can specify either capability. If you
have IAM resources with custom names, you must specify
CAPABILITY_NAMED_IAM. If you don't specify this parameter, this action
returns an C<InsufficientCapabilities> error.

For more information, see Acknowledging IAM Resources in AWS
CloudFormation Templates.



=head2 ClientRequestToken => Str

A unique identifier for this C<CreateStackSet> request. Specify this
token if you plan to retry requests so that AWS CloudFormation knows
that you're not attempting to create another stack set with the same
name. You might retry C<CreateStackSet> requests to ensure that AWS
CloudFormation successfully received them.

If you don't specify an operation ID, the SDK generates one
automatically.



=head2 Description => Str

A description of the stack set. You can use the description to identify
the stack set's purpose or other important information.



=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

The input parameters for the stack set template.



=head2 B<REQUIRED> StackSetName => Str

The name to associate with the stack set. The name must be unique in
the region where you create your stack set.

A stack name can contain only alphanumeric characters (case-sensitive)
and hyphens. It must start with an alphabetic character and can't be
longer than 128 characters.



=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

The key-value pairs to associate with this stack set and the stacks
created from it. AWS CloudFormation also propagates these tags to
supported resources that are created in the stacks. A maximum number of
50 tags can be specified.

If you specify tags as part of a C<CreateStackSet> action, AWS
CloudFormation checks to see if you have the required IAM permission to
tag resources. If you don't, the entire C<CreateStackSet> action fails
with an C<access denied> error, and the stack set is not created.



=head2 TemplateBody => Str

The structure that contains the template body, with a minimum length of
1 byte and a maximum length of 51,200 bytes. For more information, see
Template Anatomy in the AWS CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.



=head2 TemplateURL => Str

The location of the file that contains the template body. The URL must
point to a template (maximum size: 460,800 bytes) that's located in an
Amazon S3 bucket. For more information, see Template Anatomy in the AWS
CloudFormation User Guide.

Conditional: You must specify either the TemplateBody or the
TemplateURL parameter, but not both.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackSet in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

