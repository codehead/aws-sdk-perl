
package Paws::ElasticBeanstalk::CreatePlatformVersion;
  use Moose;
  has EnvironmentName => (is => 'ro', isa => 'Str');
  has OptionSettings => (is => 'ro', isa => 'ArrayRef[Paws::ElasticBeanstalk::ConfigurationOptionSetting]');
  has PlatformDefinitionBundle => (is => 'ro', isa => 'Paws::ElasticBeanstalk::S3Location', required => 1);
  has PlatformName => (is => 'ro', isa => 'Str', required => 1);
  has PlatformVersion => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePlatformVersion');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ElasticBeanstalk::CreatePlatformVersionResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreatePlatformVersionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ElasticBeanstalk::CreatePlatformVersion - Arguments for method CreatePlatformVersion on Paws::ElasticBeanstalk

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePlatformVersion on the 
AWS Elastic Beanstalk service. Use the attributes of this class
as arguments to method CreatePlatformVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePlatformVersion.

As an example:

  $service_obj->CreatePlatformVersion(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 EnvironmentName => Str

The name of the builder environment.



=head2 OptionSettings => ArrayRef[L<Paws::ElasticBeanstalk::ConfigurationOptionSetting>]

The configuration option settings to apply to the builder environment.



=head2 B<REQUIRED> PlatformDefinitionBundle => L<Paws::ElasticBeanstalk::S3Location>

The location of the platform definition archive in Amazon S3.



=head2 B<REQUIRED> PlatformName => Str

The name of your custom platform.



=head2 B<REQUIRED> PlatformVersion => Str

The number, such as 1.0.2, for the new platform version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePlatformVersion in L<Paws::ElasticBeanstalk>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

