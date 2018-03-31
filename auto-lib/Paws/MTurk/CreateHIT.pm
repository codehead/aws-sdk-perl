
package Paws::MTurk::CreateHIT;
  use Moose;
  has AssignmentDurationInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has AssignmentReviewPolicy => (is => 'ro', isa => 'Paws::MTurk::ReviewPolicy');
  has AutoApprovalDelayInSeconds => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has HITLayoutId => (is => 'ro', isa => 'Str');
  has HITLayoutParameters => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::HITLayoutParameter]');
  has HITReviewPolicy => (is => 'ro', isa => 'Paws::MTurk::ReviewPolicy');
  has Keywords => (is => 'ro', isa => 'Str');
  has LifetimeInSeconds => (is => 'ro', isa => 'Int', required => 1);
  has MaxAssignments => (is => 'ro', isa => 'Int');
  has QualificationRequirements => (is => 'ro', isa => 'ArrayRef[Paws::MTurk::QualificationRequirement]');
  has Question => (is => 'ro', isa => 'Str');
  has RequesterAnnotation => (is => 'ro', isa => 'Str');
  has Reward => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);
  has UniqueRequestToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateHIT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MTurk::CreateHITResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MTurk::CreateHIT - Arguments for method CreateHIT on Paws::MTurk

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateHIT on the 
Amazon Mechanical Turk service. Use the attributes of this class
as arguments to method CreateHIT.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateHIT.

As an example:

  $service_obj->CreateHIT(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssignmentDurationInSeconds => Int

The amount of time, in seconds, that a Worker has to complete the HIT
after accepting it. If a Worker does not complete the assignment within
the specified duration, the assignment is considered abandoned. If the
HIT is still active (that is, its lifetime has not elapsed), the
assignment becomes available for other users to find and accept.



=head2 AssignmentReviewPolicy => L<Paws::MTurk::ReviewPolicy>

The Assignment-level Review Policy applies to the assignments under the
HIT. You can specify for Mechanical Turk to take various actions based
on the policy.



=head2 AutoApprovalDelayInSeconds => Int

The number of seconds after an assignment for the HIT has been
submitted, after which the assignment is considered Approved
automatically unless the Requester explicitly rejects it.



=head2 B<REQUIRED> Description => Str

A general description of the HIT. A description includes detailed
information about the kind of task the HIT contains. On the Amazon
Mechanical Turk web site, the HIT description appears in the expanded
view of search results, and in the HIT and assignment screens. A good
description gives the user enough information to evaluate the HIT
before accepting it.



=head2 HITLayoutId => Str

The HITLayoutId allows you to use a pre-existing HIT design with
placeholder values and create an additional HIT by providing those
values as HITLayoutParameters.

Constraints: Either a Question parameter or a HITLayoutId parameter
must be provided.



=head2 HITLayoutParameters => ArrayRef[L<Paws::MTurk::HITLayoutParameter>]

If the HITLayoutId is provided, any placeholder values must be filled
in with values using the HITLayoutParameter structure. For more
information, see HITLayout.



=head2 HITReviewPolicy => L<Paws::MTurk::ReviewPolicy>

The HIT-level Review Policy applies to the HIT. You can specify for
Mechanical Turk to take various actions based on the policy.



=head2 Keywords => Str

One or more words or phrases that describe the HIT, separated by
commas. These words are used in searches to find HITs.



=head2 B<REQUIRED> LifetimeInSeconds => Int

An amount of time, in seconds, after which the HIT is no longer
available for users to accept. After the lifetime of the HIT elapses,
the HIT no longer appears in HIT searches, even if not all of the
assignments for the HIT have been accepted.



=head2 MaxAssignments => Int

The number of times the HIT can be accepted and completed before the
HIT becomes unavailable.



=head2 QualificationRequirements => ArrayRef[L<Paws::MTurk::QualificationRequirement>]

A condition that a Worker's Qualifications must meet before the Worker
is allowed to accept and complete the HIT.



=head2 Question => Str

The data the person completing the HIT uses to produce the results.

Constraints: Must be a QuestionForm data structure, an ExternalQuestion
data structure, or an HTMLQuestion data structure. The XML question
data must not be larger than 64 kilobytes (65,535 bytes) in size,
including whitespace.

Either a Question parameter or a HITLayoutId parameter must be
provided.



=head2 RequesterAnnotation => Str

An arbitrary data field. The RequesterAnnotation parameter lets your
application attach arbitrary data to the HIT for tracking purposes. For
example, this parameter could be an identifier internal to the
Requester's application that corresponds with the HIT.

The RequesterAnnotation parameter for a HIT is only visible to the
Requester who created the HIT. It is not shown to the Worker, or any
other Requester.

The RequesterAnnotation parameter may be different for each HIT you
submit. It does not affect how your HITs are grouped.



=head2 B<REQUIRED> Reward => Str

The amount of money the Requester will pay a Worker for successfully
completing the HIT.



=head2 B<REQUIRED> Title => Str

The title of the HIT. A title should be short and descriptive about the
kind of task the HIT contains. On the Amazon Mechanical Turk web site,
the HIT title appears in search results, and everywhere the HIT is
mentioned.



=head2 UniqueRequestToken => Str

A unique identifier for this request which allows you to retry the call
on error without creating duplicate HITs. This is useful in cases such
as network timeouts where it is unclear whether or not the call
succeeded on the server. If the HIT already exists in the system from a
previous call using the same UniqueRequestToken, subsequent calls will
return a AWS.MechanicalTurk.HitAlreadyExists error with a message
containing the HITId.

Note: It is your responsibility to ensure uniqueness of the token. The
unique token expires after 24 hours. Subsequent calls using the same
UniqueRequestToken made after the 24 hour limit could create duplicate
HITs.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateHIT in L<Paws::MTurk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

