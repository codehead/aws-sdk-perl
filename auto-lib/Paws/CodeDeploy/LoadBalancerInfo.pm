package Paws::CodeDeploy::LoadBalancerInfo;
  use Moose;
  has ElbInfoList => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::ELBInfo]', request_name => 'elbInfoList', traits => ['NameInRequest']);
  has TargetGroupInfoList => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TargetGroupInfo]', request_name => 'targetGroupInfoList', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::LoadBalancerInfo

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CodeDeploy::LoadBalancerInfo object:

  $service_obj->Method(Att1 => { ElbInfoList => $value, ..., TargetGroupInfoList => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CodeDeploy::LoadBalancerInfo object:

  $result = $service_obj->Method(...);
  $result->Att1->ElbInfoList

=head1 DESCRIPTION

Information about the Elastic Load Balancing load balancer or target
group used in a deployment.

=head1 ATTRIBUTES


=head2 ElbInfoList => ArrayRef[L<Paws::CodeDeploy::ELBInfo>]

  An array containing information about the load balancer to use for load
balancing in a deployment. In Elastic Load Balancing, load balancers
are used with Classic Load Balancers.


=head2 TargetGroupInfoList => ArrayRef[L<Paws::CodeDeploy::TargetGroupInfo>]

  An array containing information about the target group to use for load
balancing in a deployment. In Elastic Load Balancing, target groups are
used with Application Load Balancers.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

