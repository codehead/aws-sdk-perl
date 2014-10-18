
package Aws::S3::GetBucketTagging {
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBucketTagging');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Aws::S3::GetBucketTaggingResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetBucketTaggingResult');
}
1;