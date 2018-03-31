#!/usr/bin/env perl

use lib 't/lib';

use JSON::MaybeXS;
my $known_regions = <<'EOF';
{
  "us-east-1": {
    "cloudformation": "cloudformation.us-east-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-east-1.amazonaws.com",
    "cloudtrail": "cloudtrail.us-east-1.amazonaws.com",
    "monitoring": "monitoring.us-east-1.amazonaws.com",
    "dynamodb": "dynamodb.us-east-1.amazonaws.com",
    "ec2": "ec2.us-east-1.amazonaws.com",
    "elasticmapreduce": "elasticmapreduce.us-east-1.amazonaws.com",
    "elasticache": "elasticache.us-east-1.amazonaws.com",
    "rds": "rds.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "email": "email.us-east-1.amazonaws.com",
    "sdb": "sdb.amazonaws.com",
    "sns": "sns.us-east-1.amazonaws.com",
    "sqs": "queue.amazonaws.com",
    "s3": "s3.amazonaws.com",
    "autoscaling": "autoscaling.us-east-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-east-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-east-1.amazonaws.com",
    "support": "support.us-east-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-east-1.amazonaws.com",
    "swf": "swf.us-east-1.amazonaws.com",
    "glacier": "glacier.us-east-1.amazonaws.com",
    "directconnect": "directconnect.us-east-1.amazonaws.com",
    "datapipeline": "datapipeline.us-east-1.amazonaws.com",
    "redshift": "redshift.us-east-1.amazonaws.com",
    "kinesis": "kinesis.us-east-1.amazonaws.com",
    "opsworks": "opsworks.us-east-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-east-1.amazonaws.com",
  },
  "us-west-1": {
    "cloudformation": "cloudformation.us-west-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-west-1.amazonaws.com",
    "monitoring": "monitoring.us-west-1.amazonaws.com",
    "dynamodb": "dynamodb.us-west-1.amazonaws.com",
    "ec2": "ec2.us-west-1.amazonaws.com",
    "elasticmapreduce": "us-west-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.us-west-1.amazonaws.com",
    "rds": "rds.us-west-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.us-west-1.amazonaws.com",
    "sns": "sns.us-west-1.amazonaws.com",
    "sqs": "us-west-1.queue.amazonaws.com",
    "s3": "s3-us-west-1.amazonaws.com",
    "autoscaling": "autoscaling.us-west-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-west-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-west-1.amazonaws.com",
    "swf": "swf.us-west-1.amazonaws.com",
    "glacier": "glacier.us-west-1.amazonaws.com",
    "directconnect": "directconnect.us-west-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-west-1.amazonaws.com",
  },
  "us-west-2": {
    "cloudformation": "cloudformation.us-west-2.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.us-west-2.amazonaws.com",
    "cloudtrail": "cloudtrail.us-west-2.amazonaws.com",
    "monitoring": "monitoring.us-west-2.amazonaws.com",
    "dynamodb": "dynamodb.us-west-2.amazonaws.com",
    "ec2": "ec2.us-west-2.amazonaws.com",
    "elasticmapreduce": "us-west-2.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.us-west-2.amazonaws.com",
    "rds": "rds.us-west-2.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.us-west-2.amazonaws.com",
    "sns": "sns.us-west-2.amazonaws.com",
    "sqs": "us-west-2.queue.amazonaws.com",
    "s3": "s3-us-west-2.amazonaws.com",
    "autoscaling": "autoscaling.us-west-2.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.us-west-2.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.us-west-2.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-west-2.amazonaws.com",
    "swf": "swf.us-west-2.amazonaws.com",
    "glacier": "glacier.us-west-2.amazonaws.com",
    "directconnect": "directconnect.us-west-2.amazonaws.com",
    "redshift": "redshift.us-west-2.amazonaws.com",
    "elastictranscoder": "elastictranscoder.us-west-2.amazonaws.com",
  },
  "ap-northeast-1": {
    "cloudformation": "cloudformation.ap-northeast-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.ap-northeast-1.amazonaws.com",
    "dynamodb": "dynamodb.ap-northeast-1.amazonaws.com",
    "ec2": "ec2.ap-northeast-1.amazonaws.com",
    "elasticmapreduce": "ap-northeast-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-northeast-1.amazonaws.com",
    "rds": "rds.ap-northeast-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-northeast-1.amazonaws.com",
    "sns": "sns.ap-northeast-1.amazonaws.com",
    "sqs": "ap-northeast-1.queue.amazonaws.com",
    "s3": "s3-ap-northeast-1.amazonaws.com",
    "autoscaling": "autoscaling.ap-northeast-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-northeast-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-northeast-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-northeast-1.amazonaws.com",
    "swf": "swf.ap-northeast-1.amazonaws.com",
    "glacier": "glacier.ap-northeast-1.amazonaws.com",
    "directconnect": "directconnect.ap-northeast-1.amazonaws.com",
    "redshift": "redshift.ap-northeast-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.ap-northeast-1.amazonaws.com",
  },
  "ap-southeast-1": {
    "cloudformation": "cloudformation.ap-southeast-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.ap-southeast-1.amazonaws.com",
    "monitoring": "monitoring.ap-southeast-1.amazonaws.com",
    "dynamodb": "dynamodb.ap-southeast-1.amazonaws.com",
    "ec2": "ec2.ap-southeast-1.amazonaws.com",
    "elasticmapreduce": "ap-southeast-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-southeast-1.amazonaws.com",
    "rds": "rds.ap-southeast-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-southeast-1.amazonaws.com",
    "sns": "sns.ap-southeast-1.amazonaws.com",
    "sqs": "ap-southeast-1.queue.amazonaws.com",
    "s3": "s3-ap-southeast-1.amazonaws.com",
    "autoscaling": "autoscaling.ap-southeast-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-southeast-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-southeast-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-southeast-1.amazonaws.com",
    "swf": "swf.ap-southeast-1.amazonaws.com",
    "directconnect": "directconnect.ap-southeast-1.amazonaws.com",
    "redshift": "redshift.ap-southeast-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.ap-southeast-1.amazonaws.com",
  },
  "ap-southeast-2": {
    "cloudformation": "cloudformation.ap-southeast-2.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.ap-southeast-2.amazonaws.com",
    "dynamodb": "dynamodb.ap-southeast-2.amazonaws.com",
    "ec2": "ec2.ap-southeast-2.amazonaws.com",
    "elasticmapreduce": "ap-southeast-2.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.ap-southeast-2.amazonaws.com",
    "rds": "rds.ap-southeast-2.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.ap-southeast-2.amazonaws.com",
    "sns": "sns.ap-southeast-2.amazonaws.com",
    "sqs": "ap-southeast-2.queue.amazonaws.com",
    "s3": "s3-ap-southeast-2.amazonaws.com",
    "autoscaling": "autoscaling.ap-southeast-2.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.ap-southeast-2.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.ap-southeast-2.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.ap-southeast-2.amazonaws.com",
    "swf": "swf.ap-southeast-2.amazonaws.com",
    "glacier": "glacier.ap-southeast-2.amazonaws.com",
    "directconnect": "directconnect.ap-southeast-2.amazonaws.com",
    "redshift": "redshift.ap-southeast-2.amazonaws.com",
  },
  "sa-east-1": {
    "cloudformation": "cloudformation.sa-east-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "monitoring": "monitoring.sa-east-1.amazonaws.com",
    "dynamodb": "dynamodb.sa-east-1.amazonaws.com",
    "ec2": "ec2.sa-east-1.amazonaws.com",
    "elasticmapreduce": "sa-east-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.sa-east-1.amazonaws.com",
    "rds": "rds.sa-east-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.sa-east-1.amazonaws.com",
    "sns": "sns.sa-east-1.amazonaws.com",
    "sqs": "sa-east-1.queue.amazonaws.com",
    "s3": "s3-sa-east-1.amazonaws.com",
    "autoscaling": "autoscaling.sa-east-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.sa-east-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.sa-east-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.sa-east-1.amazonaws.com",
    "swf": "swf.sa-east-1.amazonaws.com",
    "directconnect": "directconnect.sa-east-1.amazonaws.com",
  },
  "eu-west-1": {
    "cloudformation": "cloudformation.eu-west-1.amazonaws.com",
    "cloudfront": "cloudfront.amazonaws.com",
    "cloudsearch": "cloudsearch.eu-west-1.amazonaws.com",
    "monitoring": "monitoring.eu-west-1.amazonaws.com",
    "dynamodb": "dynamodb.eu-west-1.amazonaws.com",
    "ec2": "ec2.eu-west-1.amazonaws.com",
    "elasticmapreduce": "eu-west-1.elasticmapreduce.amazonaws.com",
    "elasticache": "elasticache.eu-west-1.amazonaws.com",
    "rds": "rds.eu-west-1.amazonaws.com",
    "route53": "route53.amazonaws.com",
    "sdb": "sdb.eu-west-1.amazonaws.com",
    "sns": "sns.eu-west-1.amazonaws.com",
    "sqs": "eu-west-1.queue.amazonaws.com",
    "s3": "s3-eu-west-1.amazonaws.com",
    "autoscaling": "autoscaling.eu-west-1.amazonaws.com",
    "elasticbeanstalk": "elasticbeanstalk.eu-west-1.amazonaws.com",
    "iam": "iam.amazonaws.com",
    "importexport": "importexport.amazonaws.com",
    "sts": "sts.amazonaws.com",
    "storagegateway": "storagegateway.eu-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.eu-west-1.amazonaws.com",
    "swf": "swf.eu-west-1.amazonaws.com",
    "glacier": "glacier.eu-west-1.amazonaws.com",
    "directconnect": "directconnect.eu-west-1.amazonaws.com",
    "redshift": "redshift.eu-west-1.amazonaws.com",
    "elastictranscoder": "elastictranscoder.eu-west-1.amazonaws.com",
  },
  "cn-north-1": {
    "cloudformation": "cloudformation.cn-north-1.amazonaws.com.cn",
    "monitoring": "monitoring.cn-north-1.amazonaws.com.cn",
    "dynamodb": "dynamodb.cn-north-1.amazonaws.com.cn",
    "ec2": "ec2.cn-north-1.amazonaws.com.cn",
    "elasticmapreduce": "elasticmapreduce.cn-north-1.amazonaws.com.cn",
    "elasticache": "elasticache.cn-north-1.amazonaws.com.cn",
    "rds": "rds.cn-north-1.amazonaws.com.cn",
    "sns": "sns.cn-north-1.amazonaws.com.cn",
    "sqs": "cn-north-1.queue.amazonaws.com.cn",
    "s3": "s3.cn-north-1.amazonaws.com.cn",
    "autoscaling": "autoscaling.cn-north-1.amazonaws.com.cn",
    "iam": "iam.cn-north-1.amazonaws.com.cn",
    "sts": "sts.cn-north-1.amazonaws.com.cn",
    "storagegateway": "storagegateway.cn-north-1.amazonaws.com.cn",
    "elasticloadbalancing": "elasticloadbalancing.cn-north-1.amazonaws.com.cn",
    "swf": "swf.cn-north-1.amazonaws.com.cn",
    "glacier": "glacier.cn-north-1.amazonaws.com.cn",
  },
  "us-gov-west-1": {
    "monitoring": "monitoring.us-gov-west-1.amazonaws.com",
    "dynamodb": "dynamodb.us-gov-west-1.amazonaws.com",
    "ec2": "ec2.us-gov-west-1.amazonaws.com",
    "elasticmapreduce": "us-gov-west-1.elasticmapreduce.amazonaws.com",
    "rds": "rds.us-gov-west-1.amazonaws.com",
    "sns": "sns.us-gov-west-1.amazonaws.com",
    # The endpoint has been replaced with the name in the common name.
    "sqs": "us-gov-west-1.queue.amazonaws.com",
    "s3": "s3-us-gov-west-1.amazonaws.com",
    "autoscaling": "autoscaling.us-gov-west-1.amazonaws.com",
    "iam": "iam.us-gov.amazonaws.com",
    "sts": "sts.us-gov-west-1.amazonaws.com",
    "elasticloadbalancing": "elasticloadbalancing.us-gov-west-1.amazonaws.com",
    "swf": "swf.us-gov-west-1.amazonaws.com",
  },
  "fips-us-gov-west-1": {
    "s3": "s3-fips-us-gov-west-1.amazonaws.com"
  },
  "eu-central-1": {
      "elasticmapreduce": "elasticmapreduce.eu-central-1.amazonaws.com",
  }
}
EOF

use FindBin;
use lib "$FindBin::Bin/../lib";
use Paws;
use Paws::API::ServiceToClass;
use Data::Dumper;
use Test::More;
my $rules    = "$FindBin::Bin/../botocore/botocore/data/_endpoints.json";

my $json = JSON()->new->pretty;
$json = $json->relaxed([1]);

my $known_regions = $json->decode($known_regions);
# Override some differences with botocore handling of STS. It looks like they don't
# support regional endpoints for STS
$known_regions->{ '[UNDEF]' }->{ sts }        = 'sts.amazonaws.com';
$known_regions->{ 'us-east-1' }->{ sts }      = 'sts.us-east-1.amazonaws.com';
$known_regions->{ 'us-west-2' }->{ sts }      = 'sts.us-west-2.amazonaws.com';
$known_regions->{ 'us-west-1' }->{ sts }      = 'sts.us-west-1.amazonaws.com';
$known_regions->{ 'eu-west-1' }->{ sts }      = 'sts.eu-west-1.amazonaws.com';
$known_regions->{ 'eu-central-1' }->{ sts }   = 'sts.eu-central-1.amazonaws.com';
$known_regions->{ 'ap-southeast-1' }->{ sts } = 'sts.ap-southeast-1.amazonaws.com';
$known_regions->{ 'ap-southeast-2' }->{ sts } = 'sts.ap-southeast-2.amazonaws.com';
$known_regions->{ 'ap-northeast-1' }->{ sts } = 'sts.ap-northeast-1.amazonaws.com';
$known_regions->{ 'sa-east-1' }->{ sts }      = 'sts.sa-east-1.amazonaws.com';
#Signin service is Paws only
$known_regions->{ '[UNDEF]' }->{ signin }     = 'signin.aws.amazon.com';

my $paws = Paws->new(config => { credentials => 'Test::CustomCredentials' });

for my $region ( sort keys %$known_regions ) {
  for my $service ( sort keys %{ $known_regions->{$region} } ) {
    my $expected_endpoint = $known_regions->{ $region }->{ $service };

    # If we don't have a Class for a service, just skip it
    my $paws_service = eval { Paws::API::ServiceToClass::service_to_class($service); };
    if (not defined $paws_service){
      warn "No service for $service";
      next;
    }

    my $paws_region = ($region eq '[UNDEF]') ? undef : $region;
    my $svc = $paws->service($paws_service, region => $paws_region);

    cmp_ok($svc->endpoint_host, 'eq', $expected_endpoint, "Paws->service('$service', region => $region) endpoint is $expected_endpoint");
  }
}

my $global_services = {
  'IAM' => 'us-east-1',
  'Route53', => 'us-east-1',
  'CloudFront' => 'us-east-1',
  'WAF' => 'us-east-1'
};
foreach my $service (keys %$global_services) {
  my $svc = $paws->service($service);

  cmp_ok(
    $svc->_region_for_signature,
    'eq',
    $global_services->{ $service },
    "Will sign $service with region $global_services->{ $service }"
  );
}

done_testing;
