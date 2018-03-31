
package Paws::CognitoIdp::ListUserImportJobs;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', required => 1);
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUserImportJobs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUserImportJobsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUserImportJobs - Arguments for method ListUserImportJobs on Paws::CognitoIdp

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUserImportJobs on the 
Amazon Cognito Identity Provider service. Use the attributes of this class
as arguments to method ListUserImportJobs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUserImportJobs.

As an example:

  $service_obj->ListUserImportJobs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> MaxResults => Int

The maximum number of import jobs you want the request to return.



=head2 PaginationToken => Str

An identifier that was returned from the previous call to
C<ListUserImportJobs>, which can be used to return the next set of
import jobs in the list.



=head2 B<REQUIRED> UserPoolId => Str

The user pool ID for the user pool that the users are being imported
into.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUserImportJobs in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

