package Paws::Glue::Crawler;
  use Moose;
  has Classifiers => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CrawlElapsedTime => (is => 'ro', isa => 'Int');
  has CreationTime => (is => 'ro', isa => 'Str');
  has DatabaseName => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has LastCrawl => (is => 'ro', isa => 'Paws::Glue::LastCrawlInfo');
  has LastUpdated => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');
  has Schedule => (is => 'ro', isa => 'Paws::Glue::Schedule');
  has SchemaChangePolicy => (is => 'ro', isa => 'Paws::Glue::SchemaChangePolicy');
  has State => (is => 'ro', isa => 'Str');
  has TablePrefix => (is => 'ro', isa => 'Str');
  has Targets => (is => 'ro', isa => 'Paws::Glue::CrawlerTargets');
  has Version => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::Crawler

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::Crawler object:

  $service_obj->Method(Att1 => { Classifiers => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::Crawler object:

  $result = $service_obj->Method(...);
  $result->Att1->Classifiers

=head1 DESCRIPTION

Specifies a crawler program that examines a data source and uses
classifiers to try to its schema. If successful, the crawler records
metatdata concerning the data source in the Data Catalog.

=head1 ATTRIBUTES


=head2 Classifiers => ArrayRef[Str|Undef]

  A list of custom C<Classifier>s associated with this Crawler.


=head2 CrawlElapsedTime => Int

  If this Crawler is running, contains the total time elapsed since the
last crawl began.


=head2 CreationTime => Str

  The time when the Crawler was created.


=head2 DatabaseName => Str

  The C<Database> where this Crawler's output should be stored.


=head2 Description => Str

  A description of this Crawler and where it should be used.


=head2 LastCrawl => L<Paws::Glue::LastCrawlInfo>

  The status of the last crawl, and potentially error information if an
error occurred.


=head2 LastUpdated => Str

  The time the Crawler was last updated.


=head2 Name => Str

  The C<Crawler> name.


=head2 Role => Str

  The ARN of an IAM role used to access customer resources such as data
in S3.


=head2 Schedule => L<Paws::Glue::Schedule>

  A C<Schedule> object that specifies the schedule on which this Crawler
is to be run.


=head2 SchemaChangePolicy => L<Paws::Glue::SchemaChangePolicy>

  Sets policy for the crawler's update and delete behavior.


=head2 State => Str

  Indicates whether this Crawler is running, or whether a run is pending.


=head2 TablePrefix => Str

  The table prefix used for catalog tables created.


=head2 Targets => L<Paws::Glue::CrawlerTargets>

  A collection of targets to crawl.


=head2 Version => Int

  The version of the Crawler.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

