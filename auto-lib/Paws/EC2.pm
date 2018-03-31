package Paws::EC2;
  use Moose;
  sub service { 'ec2' }
  sub version { '2016-11-15' }
  sub flattened_arrays { 1 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
       sub { defined $_[0]->http_status and $_[0]->http_status == 503 and $_[0]->code eq 'RequestLimitExceeded' },
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::EC2Caller', 'Paws::Net::XMLResponse';

  
  sub AcceptReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AcceptVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AcceptVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AllocateHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AllocateHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AssociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AttachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AttachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AuthorizeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::AuthorizeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BundleInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::BundleInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelBundleTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelBundleTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelConversionTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelConversionTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelImportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelImportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CancelSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ConfirmProductInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ConfirmProductInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopyImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopyImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CopySnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CopySnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDefaultVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDefaultVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInstanceExportTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInstanceExportTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreatePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateReservedInstancesListing {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateReservedInstancesListing', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::CreateVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteCustomerGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteCustomerGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEgressOnlyInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteEgressOnlyInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFpgaImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteFpgaImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNatGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNatGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAcl {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAcl', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteNetworkInterfacePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteNetworkInterfacePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePlacementGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeletePlacementGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSecurityGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSecurityGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteSubnet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteSubnet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnConnectionRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnConnectionRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeleteVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DeregisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAccountAttributes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAccountAttributes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailabilityZones {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeAvailabilityZones', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeBundleTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeBundleTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeClassicLinkInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeClassicLinkInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeConversionTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeConversionTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeCustomerGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeCustomerGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDhcpOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeDhcpOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEgressOnlyInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeEgressOnlyInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeElasticGpus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeElasticGpus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeExportTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeExportTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFlowLogs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFlowLogs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeFpgaImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeFpgaImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservationOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservationOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHostReservations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHostReservations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIamInstanceProfileAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIamInstanceProfileAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImages {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImages', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportImageTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportImageTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeImportSnapshotTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeImportSnapshotTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInternetGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeInternetGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeKeyPairs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeKeyPairs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMovingAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeMovingAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNatGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNatGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkAcls {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkAcls', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfacePermissions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfacePermissions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeNetworkInterfaces {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeNetworkInterfaces', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePlacementGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePlacementGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePrefixLists {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribePrefixLists', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRegions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRegions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesListings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesListings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeReservedInstancesOfferings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeReservedInstancesOfferings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeRouteTables {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeRouteTables', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstanceAvailability {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstanceAvailability', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroupReferences {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroupReferences', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSnapshots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSnapshots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotDatafeedSubscription {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotDatafeedSubscription', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequestHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequestHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotFleetRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotFleetRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotInstanceRequests {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotInstanceRequests', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSpotPriceHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSpotPriceHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeStaleSecurityGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeStaleSecurityGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeSubnets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeSubnets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumes {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumes', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumesModifications {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumesModifications', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVolumeStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVolumeStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpoints {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpoints', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcEndpointServices {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcEndpointServices', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcPeeringConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcPeeringConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpcs {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpcs', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnConnections {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnConnections', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeVpnGateways {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DescribeVpnGateways', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachClassicLinkVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachClassicLinkVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachInternetGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachInternetGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachNetworkInterface {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachNetworkInterface', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DetachVpnGateway {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DetachVpnGateway', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateIamInstanceProfile {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateIamInstanceProfile', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateRouteTable {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateRouteTable', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSubnetCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateSubnetCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateVpcCidrBlock {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::DisassociateVpcCidrBlock', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVgwRoutePropagation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVgwRoutePropagation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVolumeIO {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVolumeIO', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLink {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLink', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub EnableVpcClassicLinkDnsSupport {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::EnableVpcClassicLinkDnsSupport', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleOutput {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleOutput', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetConsoleScreenshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetConsoleScreenshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetHostReservationPurchasePreview {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetHostReservationPurchasePreview', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPasswordData {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetPasswordData', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetReservedInstancesExchangeQuote {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::GetReservedInstancesExchangeQuote', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportKeyPair {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportKeyPair', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportSnapshot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportSnapshot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ImportVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ImportVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdentityIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdentityIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyIdFormat {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyIdFormat', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyInstancePlacement {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyInstancePlacement', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyReservedInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyReservedInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySpotFleetRequest {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySpotFleetRequest', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifySubnetAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifySubnetAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolume {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolume', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVolumeAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVolumeAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcEndpoint {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcEndpoint', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyVpcPeeringConnectionOptions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ModifyVpcPeeringConnectionOptions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub MoveAddressToVpc {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::MoveAddressToVpc', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseHostReservation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseHostReservation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseReservedInstancesOffering {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseReservedInstancesOffering', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PurchaseScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::PurchaseScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RebootInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RebootInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterImage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RegisterImage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RejectVpcPeeringConnection {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RejectVpcPeeringConnection', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseAddress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseAddress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReleaseHosts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReleaseHosts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceIamInstanceProfileAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceIamInstanceProfileAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceNetworkAclEntry {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceNetworkAclEntry', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRoute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRoute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReplaceRouteTableAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReplaceRouteTableAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ReportInstanceStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ReportInstanceStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotFleet {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotFleet', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RequestSpotInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RequestSpotInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetFpgaImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetFpgaImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetImageAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetImageAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetInstanceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetInstanceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetNetworkInterfaceAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetNetworkInterfaceAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetSnapshotAttribute {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::ResetSnapshotAttribute', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestoreAddressToClassic {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RestoreAddressToClassic', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RevokeSecurityGroupIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RevokeSecurityGroupIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RunScheduledInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::RunScheduledInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StartInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::StopInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TerminateInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::TerminateInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignIpv6Addresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignIpv6Addresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnassignPrivateIpAddresses {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnassignPrivateIpAddresses', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UnmonitorInstances {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UnmonitorInstances', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsEgress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateSecurityGroupRuleDescriptionsIngress {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAllInstances {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstances(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstances(@_, NextToken => $next_result->NextToken);
        push @{ $result->Reservations }, @{ $next_result->Reservations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
        $result = $self->DescribeInstances(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Reservations') foreach (@{ $result->Reservations });
    }

    return undef
  }
  sub DescribeAllInstanceStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceStatuses }, @{ $next_result->InstanceStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
        $result = $self->DescribeInstanceStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceStatuses') foreach (@{ $result->InstanceStatuses });
    }

    return undef
  }
  sub DescribeAllNatGateways {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeNatGateways(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeNatGateways(@_, NextToken => $next_result->NextToken);
        push @{ $result->NatGateways }, @{ $next_result->NatGateways };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
        $result = $self->DescribeNatGateways(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'NatGateways') foreach (@{ $result->NatGateways });
    }

    return undef
  }
  sub DescribeAllReservedInstancesModifications {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesModifications(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesModifications(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesModifications }, @{ $next_result->ReservedInstancesModifications };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
        $result = $self->DescribeReservedInstancesModifications(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesModifications') foreach (@{ $result->ReservedInstancesModifications });
    }

    return undef
  }
  sub DescribeAllReservedInstancesOfferings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeReservedInstancesOfferings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $next_result->NextToken);
        push @{ $result->ReservedInstancesOfferings }, @{ $next_result->ReservedInstancesOfferings };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
        $result = $self->DescribeReservedInstancesOfferings(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ReservedInstancesOfferings') foreach (@{ $result->ReservedInstancesOfferings });
    }

    return undef
  }
  sub DescribeAllSnapshots {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSnapshots(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSnapshots(@_, NextToken => $next_result->NextToken);
        push @{ $result->Snapshots }, @{ $next_result->Snapshots };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
        $result = $self->DescribeSnapshots(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Snapshots') foreach (@{ $result->Snapshots });
    }

    return undef
  }
  sub DescribeAllSpotFleetRequests {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotFleetRequests(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotFleetRequests(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotFleetRequestConfigs }, @{ $next_result->SpotFleetRequestConfigs };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
        $result = $self->DescribeSpotFleetRequests(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotFleetRequestConfigs') foreach (@{ $result->SpotFleetRequestConfigs });
    }

    return undef
  }
  sub DescribeAllSpotPriceHistory {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeSpotPriceHistory(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeSpotPriceHistory(@_, NextToken => $next_result->NextToken);
        push @{ $result->SpotPriceHistory }, @{ $next_result->SpotPriceHistory };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
        $result = $self->DescribeSpotPriceHistory(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'SpotPriceHistory') foreach (@{ $result->SpotPriceHistory });
    }

    return undef
  }
  sub DescribeAllTags {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeTags(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeTags(@_, NextToken => $next_result->NextToken);
        push @{ $result->Tags }, @{ $next_result->Tags };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Tags') foreach (@{ $result->Tags });
        $result = $self->DescribeTags(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Tags') foreach (@{ $result->Tags });
    }

    return undef
  }
  sub DescribeAllVolumes {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumes(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumes(@_, NextToken => $next_result->NextToken);
        push @{ $result->Volumes }, @{ $next_result->Volumes };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
        $result = $self->DescribeVolumes(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Volumes') foreach (@{ $result->Volumes });
    }

    return undef
  }
  sub DescribeAllVolumeStatus {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeVolumeStatus(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeVolumeStatus(@_, NextToken => $next_result->NextToken);
        push @{ $result->VolumeStatuses }, @{ $next_result->VolumeStatuses };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
        $result = $self->DescribeVolumeStatus(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'VolumeStatuses') foreach (@{ $result->VolumeStatuses });
    }

    return undef
  }


  sub operations { qw/AcceptReservedInstancesExchangeQuote AcceptVpcPeeringConnection AllocateAddress AllocateHosts AssignIpv6Addresses AssignPrivateIpAddresses AssociateAddress AssociateDhcpOptions AssociateIamInstanceProfile AssociateRouteTable AssociateSubnetCidrBlock AssociateVpcCidrBlock AttachClassicLinkVpc AttachInternetGateway AttachNetworkInterface AttachVolume AttachVpnGateway AuthorizeSecurityGroupEgress AuthorizeSecurityGroupIngress BundleInstance CancelBundleTask CancelConversionTask CancelExportTask CancelImportTask CancelReservedInstancesListing CancelSpotFleetRequests CancelSpotInstanceRequests ConfirmProductInstance CopyFpgaImage CopyImage CopySnapshot CreateCustomerGateway CreateDefaultVpc CreateDhcpOptions CreateEgressOnlyInternetGateway CreateFlowLogs CreateFpgaImage CreateImage CreateInstanceExportTask CreateInternetGateway CreateKeyPair CreateNatGateway CreateNetworkAcl CreateNetworkAclEntry CreateNetworkInterface CreateNetworkInterfacePermission CreatePlacementGroup CreateReservedInstancesListing CreateRoute CreateRouteTable CreateSecurityGroup CreateSnapshot CreateSpotDatafeedSubscription CreateSubnet CreateTags CreateVolume CreateVpc CreateVpcEndpoint CreateVpcPeeringConnection CreateVpnConnection CreateVpnConnectionRoute CreateVpnGateway DeleteCustomerGateway DeleteDhcpOptions DeleteEgressOnlyInternetGateway DeleteFlowLogs DeleteFpgaImage DeleteInternetGateway DeleteKeyPair DeleteNatGateway DeleteNetworkAcl DeleteNetworkAclEntry DeleteNetworkInterface DeleteNetworkInterfacePermission DeletePlacementGroup DeleteRoute DeleteRouteTable DeleteSecurityGroup DeleteSnapshot DeleteSpotDatafeedSubscription DeleteSubnet DeleteTags DeleteVolume DeleteVpc DeleteVpcEndpoints DeleteVpcPeeringConnection DeleteVpnConnection DeleteVpnConnectionRoute DeleteVpnGateway DeregisterImage DescribeAccountAttributes DescribeAddresses DescribeAvailabilityZones DescribeBundleTasks DescribeClassicLinkInstances DescribeConversionTasks DescribeCustomerGateways DescribeDhcpOptions DescribeEgressOnlyInternetGateways DescribeElasticGpus DescribeExportTasks DescribeFlowLogs DescribeFpgaImageAttribute DescribeFpgaImages DescribeHostReservationOfferings DescribeHostReservations DescribeHosts DescribeIamInstanceProfileAssociations DescribeIdentityIdFormat DescribeIdFormat DescribeImageAttribute DescribeImages DescribeImportImageTasks DescribeImportSnapshotTasks DescribeInstanceAttribute DescribeInstances DescribeInstanceStatus DescribeInternetGateways DescribeKeyPairs DescribeMovingAddresses DescribeNatGateways DescribeNetworkAcls DescribeNetworkInterfaceAttribute DescribeNetworkInterfacePermissions DescribeNetworkInterfaces DescribePlacementGroups DescribePrefixLists DescribeRegions DescribeReservedInstances DescribeReservedInstancesListings DescribeReservedInstancesModifications DescribeReservedInstancesOfferings DescribeRouteTables DescribeScheduledInstanceAvailability DescribeScheduledInstances DescribeSecurityGroupReferences DescribeSecurityGroups DescribeSnapshotAttribute DescribeSnapshots DescribeSpotDatafeedSubscription DescribeSpotFleetInstances DescribeSpotFleetRequestHistory DescribeSpotFleetRequests DescribeSpotInstanceRequests DescribeSpotPriceHistory DescribeStaleSecurityGroups DescribeSubnets DescribeTags DescribeVolumeAttribute DescribeVolumes DescribeVolumesModifications DescribeVolumeStatus DescribeVpcAttribute DescribeVpcClassicLink DescribeVpcClassicLinkDnsSupport DescribeVpcEndpoints DescribeVpcEndpointServices DescribeVpcPeeringConnections DescribeVpcs DescribeVpnConnections DescribeVpnGateways DetachClassicLinkVpc DetachInternetGateway DetachNetworkInterface DetachVolume DetachVpnGateway DisableVgwRoutePropagation DisableVpcClassicLink DisableVpcClassicLinkDnsSupport DisassociateAddress DisassociateIamInstanceProfile DisassociateRouteTable DisassociateSubnetCidrBlock DisassociateVpcCidrBlock EnableVgwRoutePropagation EnableVolumeIO EnableVpcClassicLink EnableVpcClassicLinkDnsSupport GetConsoleOutput GetConsoleScreenshot GetHostReservationPurchasePreview GetPasswordData GetReservedInstancesExchangeQuote ImportImage ImportInstance ImportKeyPair ImportSnapshot ImportVolume ModifyFpgaImageAttribute ModifyHosts ModifyIdentityIdFormat ModifyIdFormat ModifyImageAttribute ModifyInstanceAttribute ModifyInstancePlacement ModifyNetworkInterfaceAttribute ModifyReservedInstances ModifySnapshotAttribute ModifySpotFleetRequest ModifySubnetAttribute ModifyVolume ModifyVolumeAttribute ModifyVpcAttribute ModifyVpcEndpoint ModifyVpcPeeringConnectionOptions MonitorInstances MoveAddressToVpc PurchaseHostReservation PurchaseReservedInstancesOffering PurchaseScheduledInstances RebootInstances RegisterImage RejectVpcPeeringConnection ReleaseAddress ReleaseHosts ReplaceIamInstanceProfileAssociation ReplaceNetworkAclAssociation ReplaceNetworkAclEntry ReplaceRoute ReplaceRouteTableAssociation ReportInstanceStatus RequestSpotFleet RequestSpotInstances ResetFpgaImageAttribute ResetImageAttribute ResetInstanceAttribute ResetNetworkInterfaceAttribute ResetSnapshotAttribute RestoreAddressToClassic RevokeSecurityGroupEgress RevokeSecurityGroupIngress RunInstances RunScheduledInstances StartInstances StopInstances TerminateInstances UnassignIpv6Addresses UnassignPrivateIpAddresses UnmonitorInstances UpdateSecurityGroupRuleDescriptionsEgress UpdateSecurityGroupRuleDescriptionsIngress / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2 - Perl Interface to AWS Amazon Elastic Compute Cloud

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('EC2');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

Amazon Elastic Compute Cloud

Amazon Elastic Compute Cloud (Amazon EC2) provides resizable computing
capacity in the Amazon Web Services (AWS) cloud. Using Amazon EC2
eliminates your need to invest in hardware up front, so you can develop
and deploy applications faster.

=head1 METHODS

=head2 AcceptReservedInstancesExchangeQuote(ReservedInstanceIds => ArrayRef[Str|Undef], [DryRun => Bool, TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]])

Each argument is described in detail in: L<Paws::EC2::AcceptReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::AcceptReservedInstancesExchangeQuoteResult> instance

  Accepts the Convertible Reserved Instance exchange quote described in
the GetReservedInstancesExchangeQuote call.


=head2 AcceptVpcPeeringConnection([DryRun => Bool, VpcPeeringConnectionId => Str])

Each argument is described in detail in: L<Paws::EC2::AcceptVpcPeeringConnection>

Returns: a L<Paws::EC2::AcceptVpcPeeringConnectionResult> instance

  Accept a VPC peering connection request. To accept a request, the VPC
peering connection must be in the C<pending-acceptance> state, and you
must be the owner of the peer VPC. Use DescribeVpcPeeringConnections to
view your outstanding VPC peering connection requests.


=head2 AllocateAddress([Address => Str, Domain => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AllocateAddress>

Returns: a L<Paws::EC2::AllocateAddressResult> instance

  Allocates an Elastic IP address.

An Elastic IP address is for use either in the EC2-Classic platform or
in a VPC. By default, you can allocate 5 Elastic IP addresses for
EC2-Classic per region and 5 Elastic IP addresses for EC2-VPC per
region.

If you release an Elastic IP address for use in a VPC, you might be
able to recover it. To recover an Elastic IP address that you released,
specify it in the C<Address> parameter. Note that you cannot recover an
Elastic IP address that you released after it is allocated to another
AWS account.

For more information, see Elastic IP Addresses in the I<Amazon Elastic
Compute Cloud User Guide>.


=head2 AllocateHosts(AvailabilityZone => Str, InstanceType => Str, Quantity => Int, [AutoPlacement => Str, ClientToken => Str])

Each argument is described in detail in: L<Paws::EC2::AllocateHosts>

Returns: a L<Paws::EC2::AllocateHostsResult> instance

  Allocates a Dedicated Host to your account. At minimum you need to
specify the instance size type, Availability Zone, and quantity of
hosts you want to allocate.


=head2 AssignIpv6Addresses(NetworkInterfaceId => Str, [Ipv6AddressCount => Int, Ipv6Addresses => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::AssignIpv6Addresses>

Returns: a L<Paws::EC2::AssignIpv6AddressesResult> instance

  Assigns one or more IPv6 addresses to the specified network interface.
You can specify one or more specific IPv6 addresses, or you can specify
the number of IPv6 addresses to be automatically assigned from within
the subnet's IPv6 CIDR block range. You can assign as many IPv6
addresses to a network interface as you can assign private IPv4
addresses, and the limit varies per instance type. For information, see
IP Addresses Per Network Interface Per Instance Type in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 AssignPrivateIpAddresses(NetworkInterfaceId => Str, [AllowReassignment => Bool, PrivateIpAddresses => ArrayRef[Str|Undef], SecondaryPrivateIpAddressCount => Int])

Each argument is described in detail in: L<Paws::EC2::AssignPrivateIpAddresses>

Returns: nothing

  Assigns one or more secondary private IP addresses to the specified
network interface. You can specify one or more specific secondary IP
addresses, or you can specify the number of secondary IP addresses to
be automatically assigned within the subnet's CIDR block range. The
number of secondary IP addresses that you can assign to an instance
varies by instance type. For information about instance types, see
Instance Types in the I<Amazon Elastic Compute Cloud User Guide>. For
more information about Elastic IP addresses, see Elastic IP Addresses
in the I<Amazon Elastic Compute Cloud User Guide>.

AssignPrivateIpAddresses is available only in EC2-VPC.


=head2 AssociateAddress([AllocationId => Str, AllowReassociation => Bool, DryRun => Bool, InstanceId => Str, NetworkInterfaceId => Str, PrivateIpAddress => Str, PublicIp => Str])

Each argument is described in detail in: L<Paws::EC2::AssociateAddress>

Returns: a L<Paws::EC2::AssociateAddressResult> instance

  Associates an Elastic IP address with an instance or a network
interface.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide>.

[EC2-Classic, VPC in an EC2-VPC-only account] If the Elastic IP address
is already associated with a different instance, it is disassociated
from that instance and associated with the specified instance. If you
associate an Elastic IP address with an instance that has an existing
Elastic IP address, the existing address is disassociated from the
instance, but remains allocated to your account.

[VPC in an EC2-Classic account] If you don't specify a private IP
address, the Elastic IP address is associated with the primary IP
address. If the Elastic IP address is already associated with a
different instance or a network interface, you get an error unless you
allow reassociation. You cannot associate an Elastic IP address with an
instance or network interface that has an existing Elastic IP address.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error, and you may be charged for
each time the Elastic IP address is remapped to the same instance. For
more information, see the I<Elastic IP Addresses> section of Amazon EC2
Pricing.


=head2 AssociateDhcpOptions(DhcpOptionsId => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AssociateDhcpOptions>

Returns: nothing

  Associates a set of DHCP options (that you've previously created) with
the specified VPC, or associates no DHCP options with the VPC.

After you associate the options with the VPC, any existing instances
and all new instances that you launch in that VPC use the options. You
don't need to restart or relaunch the instances. They automatically
pick up the changes within a few hours, depending on how frequently the
instance renews its DHCP lease. You can explicitly renew the lease
using the operating system on the instance.

For more information, see DHCP Options Sets in the I<Amazon Virtual
Private Cloud User Guide>.


=head2 AssociateIamInstanceProfile(IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>, InstanceId => Str)

Each argument is described in detail in: L<Paws::EC2::AssociateIamInstanceProfile>

Returns: a L<Paws::EC2::AssociateIamInstanceProfileResult> instance

  Associates an IAM instance profile with a running or stopped instance.
You cannot associate more than one IAM instance profile with an
instance.


=head2 AssociateRouteTable(RouteTableId => Str, SubnetId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AssociateRouteTable>

Returns: a L<Paws::EC2::AssociateRouteTableResult> instance

  Associates a subnet with a route table. The subnet and route table must
be in the same VPC. This association causes traffic originating from
the subnet to be routed according to the routes in the route table. The
action returns an association ID, which you need in order to
disassociate the route table from the subnet later. A route table can
be associated with multiple subnets.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 AssociateSubnetCidrBlock(Ipv6CidrBlock => Str, SubnetId => Str)

Each argument is described in detail in: L<Paws::EC2::AssociateSubnetCidrBlock>

Returns: a L<Paws::EC2::AssociateSubnetCidrBlockResult> instance

  Associates a CIDR block with your subnet. You can only associate a
single IPv6 CIDR block with your subnet. An IPv6 CIDR block must have a
prefix length of /64.


=head2 AssociateVpcCidrBlock(VpcId => Str, [AmazonProvidedIpv6CidrBlock => Bool, CidrBlock => Str])

Each argument is described in detail in: L<Paws::EC2::AssociateVpcCidrBlock>

Returns: a L<Paws::EC2::AssociateVpcCidrBlockResult> instance

  Associates a CIDR block with your VPC. You can associate a secondary
IPv4 CIDR block, or you can associate an Amazon-provided IPv6 CIDR
block. The IPv6 CIDR block size is fixed at /56.

For more information about associating CIDR blocks with your VPC and
applicable restrictions, see VPC and Subnet Sizing in the I<Amazon
Virtual Private Cloud User Guide>.


=head2 AttachClassicLinkVpc(Groups => ArrayRef[Str|Undef], InstanceId => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AttachClassicLinkVpc>

Returns: a L<Paws::EC2::AttachClassicLinkVpcResult> instance

  Links an EC2-Classic instance to a ClassicLink-enabled VPC through one
or more of the VPC's security groups. You cannot link an EC2-Classic
instance to more than one VPC at a time. You can only link an instance
that's in the C<running> state. An instance is automatically unlinked
from a VPC when it's stopped - you can link it to the VPC again when
you restart it.

After you've linked an instance, you cannot change the VPC security
groups that are associated with it. To change the security groups, you
must first unlink the instance, and then link it again.

Linking your instance to a VPC is sometimes referred to as I<attaching>
your instance.


=head2 AttachInternetGateway(InternetGatewayId => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AttachInternetGateway>

Returns: nothing

  Attaches an Internet gateway to a VPC, enabling connectivity between
the Internet and the VPC. For more information about your VPC and
Internet gateway, see the Amazon Virtual Private Cloud User Guide.


=head2 AttachNetworkInterface(DeviceIndex => Int, InstanceId => Str, NetworkInterfaceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AttachNetworkInterface>

Returns: a L<Paws::EC2::AttachNetworkInterfaceResult> instance

  Attaches a network interface to an instance.


=head2 AttachVolume(Device => Str, InstanceId => Str, VolumeId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AttachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

  Attaches an EBS volume to a running or stopped instance and exposes it
to the instance with the specified device name.

Encrypted EBS volumes may only be attached to instances that support
Amazon EBS encryption. For more information, see Amazon EBS Encryption
in the I<Amazon Elastic Compute Cloud User Guide>.

For a list of supported device names, see Attaching an EBS Volume to an
Instance. Any device names that aren't reserved for instance store
volumes can be used for EBS volumes. For more information, see Amazon
EC2 Instance Store in the I<Amazon Elastic Compute Cloud User Guide>.

If a volume has an AWS Marketplace product code:

=over

=item *

The volume can be attached only to a stopped instance.

=item *

AWS Marketplace product codes are copied from the volume to the
instance.

=item *

You must be subscribed to the product.

=item *

The instance type and operating system of the instance must support the
product. For example, you can't detach a volume from a Windows instance
and attach it to a Linux instance.

=back

For an overview of the AWS Marketplace, see Introducing AWS
Marketplace.

For more information about EBS volumes, see Attaching Amazon EBS
Volumes in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 AttachVpnGateway(VpcId => Str, VpnGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::AttachVpnGateway>

Returns: a L<Paws::EC2::AttachVpnGatewayResult> instance

  Attaches a virtual private gateway to a VPC. You can attach one virtual
private gateway to one VPC at a time.

For more information, see Adding a Hardware Virtual Private Gateway to
Your VPC in the I<Amazon Virtual Private Cloud User Guide>.


=head2 AuthorizeSecurityGroupEgress(GroupId => Str, [CidrIp => Str, DryRun => Bool, FromPort => Int, IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], IpProtocol => Str, SourceSecurityGroupName => Str, SourceSecurityGroupOwnerId => Str, ToPort => Int])

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupEgress>

Returns: nothing

  [EC2-VPC only] Adds one or more egress rules to a security group for
use with a VPC. Specifically, this action permits instances to send
traffic to one or more destination IPv4 or IPv6 CIDR address ranges, or
to one or more destination security groups for the same VPC. This
action doesn't apply to security groups for use in EC2-Classic. For
more information, see Security Groups for Your VPC in the I<Amazon
Virtual Private Cloud User Guide>. For more information about security
group limits, see Amazon VPC Limits.

Each rule consists of the protocol (for example, TCP), plus either a
CIDR range or a source group. For the TCP and UDP protocols, you must
also specify the destination port or port range. For the ICMP protocol,
you must also specify the ICMP type and code. You can use -1 for the
type or code to mean all types or all codes. You can optionally specify
a description for the rule.

Rule changes are propagated to affected instances as quickly as
possible. However, a small delay might occur.


=head2 AuthorizeSecurityGroupIngress([CidrIp => Str, DryRun => Bool, FromPort => Int, GroupId => Str, GroupName => Str, IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], IpProtocol => Str, SourceSecurityGroupName => Str, SourceSecurityGroupOwnerId => Str, ToPort => Int])

Each argument is described in detail in: L<Paws::EC2::AuthorizeSecurityGroupIngress>

Returns: nothing

  Adds one or more ingress rules to a security group.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.

[EC2-Classic] This action gives one or more IPv4 CIDR address ranges
permission to access a security group in your account, or gives one or
more security groups (called the I<source groups>) permission to access
a security group for your account. A source group can be for your own
AWS account, or another. You can have up to 100 rules per group.

[EC2-VPC] This action gives one or more IPv4 or IPv6 CIDR address
ranges permission to access a security group in your VPC, or gives one
or more other security groups (called the I<source groups>) permission
to access a security group for your VPC. The security groups must all
be for the same VPC or a peer VPC in a VPC peering connection. For more
information about VPC security group limits, see Amazon VPC Limits.

You can optionally specify a description for the security group rule.


=head2 BundleInstance(InstanceId => Str, Storage => L<Paws::EC2::Storage>, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::BundleInstance>

Returns: a L<Paws::EC2::BundleInstanceResult> instance

  Bundles an Amazon instance store-backed Windows instance.

During bundling, only the root device volume (C:\) is bundled. Data on
other instance store volumes is not preserved.

This action is not applicable for Linux/Unix instances or Windows
instances that are backed by Amazon EBS.

For more information, see Creating an Instance Store-Backed Windows
AMI.


=head2 CancelBundleTask(BundleId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CancelBundleTask>

Returns: a L<Paws::EC2::CancelBundleTaskResult> instance

  Cancels a bundling operation for an instance store-backed Windows
instance.


=head2 CancelConversionTask(ConversionTaskId => Str, [DryRun => Bool, ReasonMessage => Str])

Each argument is described in detail in: L<Paws::EC2::CancelConversionTask>

Returns: nothing

  Cancels an active conversion task. The task can be the import of an
instance or volume. The action removes all artifacts of the conversion,
including a partially uploaded volume or instance. If the conversion is
complete or is in the process of transferring the final disk image, the
command fails and returns an exception.

For more information, see Importing a Virtual Machine Using the Amazon
EC2 CLI.


=head2 CancelExportTask(ExportTaskId => Str)

Each argument is described in detail in: L<Paws::EC2::CancelExportTask>

Returns: nothing

  Cancels an active export task. The request removes all artifacts of the
export, including any partially-created Amazon S3 objects. If the
export task is complete or is in the process of transferring the final
disk image, the command fails and returns an error.


=head2 CancelImportTask([CancelReason => Str, DryRun => Bool, ImportTaskId => Str])

Each argument is described in detail in: L<Paws::EC2::CancelImportTask>

Returns: a L<Paws::EC2::CancelImportTaskResult> instance

  Cancels an in-process import virtual machine or import snapshot task.


=head2 CancelReservedInstancesListing(ReservedInstancesListingId => Str)

Each argument is described in detail in: L<Paws::EC2::CancelReservedInstancesListing>

Returns: a L<Paws::EC2::CancelReservedInstancesListingResult> instance

  Cancels the specified Reserved Instance listing in the Reserved
Instance Marketplace.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 CancelSpotFleetRequests(SpotFleetRequestIds => ArrayRef[Str|Undef], TerminateInstances => Bool, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CancelSpotFleetRequests>

Returns: a L<Paws::EC2::CancelSpotFleetRequestsResponse> instance

  Cancels the specified Spot fleet requests.

After you cancel a Spot fleet request, the Spot fleet launches no new
Spot instances. You must specify whether the Spot fleet should also
terminate its Spot instances. If you terminate the instances, the Spot
fleet request enters the C<cancelled_terminating> state. Otherwise, the
Spot fleet request enters the C<cancelled_running> state and the
instances continue to run until they are interrupted or you terminate
them manually.


=head2 CancelSpotInstanceRequests(SpotInstanceRequestIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CancelSpotInstanceRequests>

Returns: a L<Paws::EC2::CancelSpotInstanceRequestsResult> instance

  Cancels one or more Spot instance requests. Spot instances are
instances that Amazon EC2 starts on your behalf when the bid price that
you specify exceeds the current Spot price. Amazon EC2 periodically
sets the Spot price based on available Spot instance capacity and
current Spot instance requests. For more information, see Spot Instance
Requests in the I<Amazon Elastic Compute Cloud User Guide>.

Canceling a Spot instance request does not terminate running Spot
instances associated with the request.


=head2 ConfirmProductInstance(InstanceId => Str, ProductCode => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ConfirmProductInstance>

Returns: a L<Paws::EC2::ConfirmProductInstanceResult> instance

  Determines whether a product code is associated with an instance. This
action can only be used by the owner of the product code. It is useful
when a product code owner must verify whether another user's instance
is eligible for support.


=head2 CopyFpgaImage(SourceFpgaImageId => Str, SourceRegion => Str, [ClientToken => Str, Description => Str, DryRun => Bool, Name => Str])

Each argument is described in detail in: L<Paws::EC2::CopyFpgaImage>

Returns: a L<Paws::EC2::CopyFpgaImageResult> instance

  Copies the specified Amazon FPGA Image (AFI) to the current region.


=head2 CopyImage(Name => Str, SourceImageId => Str, SourceRegion => Str, [ClientToken => Str, Description => Str, DryRun => Bool, Encrypted => Bool, KmsKeyId => Str])

Each argument is described in detail in: L<Paws::EC2::CopyImage>

Returns: a L<Paws::EC2::CopyImageResult> instance

  Initiates the copy of an AMI from the specified source region to the
current region. You specify the destination region by using its
endpoint when making the request.

For more information about the prerequisites and limits when copying an
AMI, see Copying an AMI in the I<Amazon Elastic Compute Cloud User
Guide>.


=head2 CopySnapshot(SourceRegion => Str, SourceSnapshotId => Str, [Description => Str, DestinationRegion => Str, DryRun => Bool, Encrypted => Bool, KmsKeyId => Str, PresignedUrl => Str])

Each argument is described in detail in: L<Paws::EC2::CopySnapshot>

Returns: a L<Paws::EC2::CopySnapshotResult> instance

  Copies a point-in-time snapshot of an EBS volume and stores it in
Amazon S3. You can copy the snapshot within the same region or from one
region to another. You can use the snapshot to create EBS volumes or
Amazon Machine Images (AMIs). The snapshot is copied to the regional
endpoint that you send the HTTP request to.

Copies of encrypted EBS snapshots remain encrypted. Copies of
unencrypted snapshots remain unencrypted, unless the C<Encrypted> flag
is specified during the snapshot copy operation. By default, encrypted
snapshot copies use the default AWS Key Management Service (AWS KMS)
customer master key (CMK); however, you can specify a non-default CMK
with the C<KmsKeyId> parameter.

To copy an encrypted snapshot that has been shared from another
account, you must have permissions for the CMK used to encrypt the
snapshot.

Snapshots created by the CopySnapshot action have an arbitrary volume
ID that should not be used for any purpose.

For more information, see Copying an Amazon EBS Snapshot in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateCustomerGateway(BgpAsn => Int, PublicIp => Str, Type => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateCustomerGateway>

Returns: a L<Paws::EC2::CreateCustomerGatewayResult> instance

  Provides information to AWS about your VPN customer gateway device. The
customer gateway is the appliance at your end of the VPN connection.
(The device on the AWS side of the VPN connection is the virtual
private gateway.) You must provide the Internet-routable IP address of
the customer gateway's external interface. The IP address must be
static and may be behind a device performing network address
translation (NAT).

For devices that use Border Gateway Protocol (BGP), you can also
provide the device's BGP Autonomous System Number (ASN). You can use an
existing ASN assigned to your network. If you don't have an ASN
already, you can use a private ASN (in the 64512 - 65534 range).

Amazon EC2 supports all 2-byte ASN numbers in the range of 1 - 65534,
with the exception of 7224, which is reserved in the C<us-east-1>
region, and 9059, which is reserved in the C<eu-west-1> region.

For more information about VPN customer gateways, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.

You cannot create more than one customer gateway with the same VPN
type, IP address, and BGP ASN parameter values. If you run an identical
request more than one time, the first request creates the customer
gateway, and subsequent requests return information about the existing
customer gateway. The subsequent requests do not create new customer
gateway resources.


=head2 CreateDefaultVpc([DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateDefaultVpc>

Returns: a L<Paws::EC2::CreateDefaultVpcResult> instance

  Creates a default VPC with a size C</16> IPv4 CIDR block and a default
subnet in each Availability Zone. For more information about the
components of a default VPC, see Default VPC and Default Subnets in the
I<Amazon Virtual Private Cloud User Guide>. You cannot specify the
components of the default VPC yourself.

You can create a default VPC if you deleted your previous default VPC.
You cannot have more than one default VPC per region.

If your account supports EC2-Classic, you cannot use this action to
create a default VPC in a region that supports EC2-Classic. If you want
a default VPC in a region that supports EC2-Classic, see "I really want
a default VPC for my existing EC2 account. Is that possible?" in the
Default VPCs FAQ.


=head2 CreateDhcpOptions(DhcpConfigurations => ArrayRef[L<Paws::EC2::NewDhcpConfiguration>], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateDhcpOptions>

Returns: a L<Paws::EC2::CreateDhcpOptionsResult> instance

  Creates a set of DHCP options for your VPC. After creating the set, you
must associate it with the VPC, causing all existing and new instances
that you launch in the VPC to use this set of DHCP options. The
following are the individual DHCP options you can specify. For more
information about the options, see RFC 2132.

=over

=item *

C<domain-name-servers> - The IP addresses of up to four domain name
servers, or AmazonProvidedDNS. The default DHCP option set specifies
AmazonProvidedDNS. If specifying more than one domain name server,
specify the IP addresses in a single parameter, separated by commas. If
you want your instance to receive a custom DNS hostname as specified in
C<domain-name>, you must set C<domain-name-servers> to a custom DNS
server.

=item *

C<domain-name> - If you're using AmazonProvidedDNS in C<us-east-1>,
specify C<ec2.internal>. If you're using AmazonProvidedDNS in another
region, specify C<region.compute.internal> (for example,
C<ap-northeast-1.compute.internal>). Otherwise, specify a domain name
(for example, C<MyCompany.com>). This value is used to complete
unqualified DNS hostnames. B<Important>: Some Linux operating systems
accept multiple domain names separated by spaces. However, Windows and
other Linux operating systems treat the value as a single domain, which
results in unexpected behavior. If your DHCP options set is associated
with a VPC that has instances with multiple operating systems, specify
only one domain name.

=item *

C<ntp-servers> - The IP addresses of up to four Network Time Protocol
(NTP) servers.

=item *

C<netbios-name-servers> - The IP addresses of up to four NetBIOS name
servers.

=item *

C<netbios-node-type> - The NetBIOS node type (1, 2, 4, or 8). We
recommend that you specify 2 (broadcast and multicast are not currently
supported). For more information about these node types, see RFC 2132.

=back

Your VPC automatically starts out with a set of DHCP options that
includes only a DNS server that we provide (AmazonProvidedDNS). If you
create a set of options, and if your VPC has an Internet gateway, make
sure to set the C<domain-name-servers> option either to
C<AmazonProvidedDNS> or to a domain name server of your choice. For
more information about DHCP options, see DHCP Options Sets in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateEgressOnlyInternetGateway(VpcId => Str, [ClientToken => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::CreateEgressOnlyInternetGatewayResult> instance

  [IPv6 only] Creates an egress-only Internet gateway for your VPC. An
egress-only Internet gateway is used to enable outbound communication
over IPv6 from instances in your VPC to the Internet, and prevents
hosts outside of your VPC from initiating an IPv6 connection with your
instance.


=head2 CreateFlowLogs(DeliverLogsPermissionArn => Str, LogGroupName => Str, ResourceIds => ArrayRef[Str|Undef], ResourceType => Str, TrafficType => Str, [ClientToken => Str])

Each argument is described in detail in: L<Paws::EC2::CreateFlowLogs>

Returns: a L<Paws::EC2::CreateFlowLogsResult> instance

  Creates one or more flow logs to capture IP traffic for a specific
network interface, subnet, or VPC. Flow logs are delivered to a
specified log group in Amazon CloudWatch Logs. If you specify a VPC or
subnet in the request, a log stream is created in CloudWatch Logs for
each network interface in the subnet or VPC. Log streams can include
information about accepted and rejected traffic to a network interface.
You can view the data in your log streams using Amazon CloudWatch Logs.

In your request, you must also specify an IAM role that has permission
to publish logs to CloudWatch Logs.


=head2 CreateFpgaImage(InputStorageLocation => L<Paws::EC2::StorageLocation>, [ClientToken => Str, Description => Str, DryRun => Bool, LogsStorageLocation => L<Paws::EC2::StorageLocation>, Name => Str])

Each argument is described in detail in: L<Paws::EC2::CreateFpgaImage>

Returns: a L<Paws::EC2::CreateFpgaImageResult> instance

  Creates an Amazon FPGA Image (AFI) from the specified design checkpoint
(DCP).

The create operation is asynchronous. To verify that the AFI is ready
for use, check the output logs.

An AFI contains the FPGA bitstream that is ready to download to an
FPGA. You can securely deploy an AFI on one or more FPGA-accelerated
instances. For more information, see the AWS FPGA Hardware Development
Kit.


=head2 CreateImage(InstanceId => Str, Name => Str, [BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>], Description => Str, DryRun => Bool, NoReboot => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateImage>

Returns: a L<Paws::EC2::CreateImageResult> instance

  Creates an Amazon EBS-backed AMI from an Amazon EBS-backed instance
that is either running or stopped.

If you customized your instance with instance store volumes or EBS
volumes in addition to the root device volume, the new AMI contains
block device mapping information for those volumes. When you launch an
instance from this new AMI, the instance automatically launches with
those additional volumes.

For more information, see Creating Amazon EBS-Backed Linux AMIs in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateInstanceExportTask(InstanceId => Str, [Description => Str, ExportToS3Task => L<Paws::EC2::ExportToS3TaskSpecification>, TargetEnvironment => Str])

Each argument is described in detail in: L<Paws::EC2::CreateInstanceExportTask>

Returns: a L<Paws::EC2::CreateInstanceExportTaskResult> instance

  Exports a running or stopped instance to an S3 bucket.

For information about the supported operating systems, image formats,
and known limitations for the types of instances you can export, see
Exporting an Instance as a VM Using VM Import/Export in the I<VM
Import/Export User Guide>.


=head2 CreateInternetGateway([DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateInternetGateway>

Returns: a L<Paws::EC2::CreateInternetGatewayResult> instance

  Creates an Internet gateway for use with a VPC. After creating the
Internet gateway, you attach it to a VPC using AttachInternetGateway.

For more information about your VPC and Internet gateway, see the
Amazon Virtual Private Cloud User Guide.


=head2 CreateKeyPair(KeyName => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateKeyPair>

Returns: a L<Paws::EC2::KeyPair> instance

  Creates a 2048-bit RSA key pair with the specified name. Amazon EC2
stores the public key and displays the private key for you to save to a
file. The private key is returned as an unencrypted PEM encoded PKCS#8
private key. If a key with the specified name already exists, Amazon
EC2 returns an error.

You can have up to five thousand key pairs per region.

The key pair returned to you is available only in the region in which
you create it. To create a key pair that is available in all regions,
use ImportKeyPair.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 CreateNatGateway(AllocationId => Str, SubnetId => Str, [ClientToken => Str])

Each argument is described in detail in: L<Paws::EC2::CreateNatGateway>

Returns: a L<Paws::EC2::CreateNatGatewayResult> instance

  Creates a NAT gateway in the specified subnet. A NAT gateway can be
used to enable instances in a private subnet to connect to the
Internet. This action creates a network interface in the specified
subnet with a private IP address from the IP address range of the
subnet. For more information, see NAT Gateways in the I<Amazon Virtual
Private Cloud User Guide>.


=head2 CreateNetworkAcl(VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAcl>

Returns: a L<Paws::EC2::CreateNetworkAclResult> instance

  Creates a network ACL in a VPC. Network ACLs provide an optional layer
of security (in addition to security groups) for the instances in your
VPC.

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkAclEntry(Egress => Bool, NetworkAclId => Str, Protocol => Str, RuleAction => Str, RuleNumber => Int, [CidrBlock => Str, DryRun => Bool, IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>, Ipv6CidrBlock => Str, PortRange => L<Paws::EC2::PortRange>])

Each argument is described in detail in: L<Paws::EC2::CreateNetworkAclEntry>

Returns: nothing

  Creates an entry (a rule) in a network ACL with the specified rule
number. Each network ACL has a set of numbered ingress rules and a
separate set of numbered egress rules. When determining whether a
packet should be allowed in or out of a subnet associated with the ACL,
we process the entries in the ACL according to the rule numbers, in
ascending order. Each network ACL has a set of ingress rules and a
separate set of egress rules.

We recommend that you leave room between the rule numbers (for example,
100, 110, 120, ...), and not number them one right after the other (for
example, 101, 102, 103, ...). This makes it easier to add a rule
between existing ones without having to renumber the rules.

After you add an entry, you can't modify it; you must either replace
it, or create an entry and delete the old one.

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkInterface(SubnetId => Str, [Description => Str, DryRun => Bool, Groups => ArrayRef[Str|Undef], Ipv6AddressCount => Int, Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>], PrivateIpAddress => Str, PrivateIpAddresses => ArrayRef[L<Paws::EC2::PrivateIpAddressSpecification>], SecondaryPrivateIpAddressCount => Int])

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterface>

Returns: a L<Paws::EC2::CreateNetworkInterfaceResult> instance

  Creates a network interface in the specified subnet.

For more information about network interfaces, see Elastic Network
Interfaces in the I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateNetworkInterfacePermission(NetworkInterfaceId => Str, Permission => Str, [AwsAccountId => Str, AwsService => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateNetworkInterfacePermission>

Returns: a L<Paws::EC2::CreateNetworkInterfacePermissionResult> instance

  Grants an AWS authorized partner account permission to attach the
specified network interface to an instance in their account.

You can grant permission to a single AWS account only, and only one
account at a time.


=head2 CreatePlacementGroup(GroupName => Str, Strategy => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreatePlacementGroup>

Returns: nothing

  Creates a placement group that you launch cluster instances into. Give
the group a name that's unique within the scope of your account.

For more information about placement groups and cluster instances, see
Cluster Instances in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateReservedInstancesListing(ClientToken => Str, InstanceCount => Int, PriceSchedules => ArrayRef[L<Paws::EC2::PriceScheduleSpecification>], ReservedInstancesId => Str)

Each argument is described in detail in: L<Paws::EC2::CreateReservedInstancesListing>

Returns: a L<Paws::EC2::CreateReservedInstancesListingResult> instance

  Creates a listing for Amazon EC2 Standard Reserved Instances to be sold
in the Reserved Instance Marketplace. You can submit one Standard
Reserved Instance listing at a time. To get a list of your Standard
Reserved Instances, you can use the DescribeReservedInstances
operation.

Only Standard Reserved Instances with a capacity reservation can be
sold in the Reserved Instance Marketplace. Convertible Reserved
Instances and Standard Reserved Instances with a regional benefit
cannot be sold.

The Reserved Instance Marketplace matches sellers who want to resell
Standard Reserved Instance capacity that they no longer need with
buyers who want to purchase additional capacity. Reserved Instances
bought and sold through the Reserved Instance Marketplace work like any
other Reserved Instances.

To sell your Standard Reserved Instances, you must first register as a
seller in the Reserved Instance Marketplace. After completing the
registration process, you can create a Reserved Instance Marketplace
listing of some or all of your Standard Reserved Instances, and specify
the upfront price to receive for them. Your Standard Reserved Instance
listings then become available for purchase. To view the details of
your Standard Reserved Instance listing, you can use the
DescribeReservedInstancesListings operation.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 CreateRoute(RouteTableId => Str, [DestinationCidrBlock => Str, DestinationIpv6CidrBlock => Str, DryRun => Bool, EgressOnlyInternetGatewayId => Str, GatewayId => Str, InstanceId => Str, NatGatewayId => Str, NetworkInterfaceId => Str, VpcPeeringConnectionId => Str])

Each argument is described in detail in: L<Paws::EC2::CreateRoute>

Returns: a L<Paws::EC2::CreateRouteResult> instance

  Creates a route in a route table within a VPC.

You must specify one of the following targets: Internet gateway or
virtual private gateway, NAT instance, NAT gateway, VPC peering
connection, network interface, or egress-only Internet gateway.

When determining how to route traffic, we use the route with the most
specific match. For example, traffic is destined for the IPv4 address
C<192.0.2.3>, and the route table includes the following two IPv4
routes:

=over

=item *

C<192.0.2.0/24> (goes to some target A)

=item *

C<192.0.2.0/28> (goes to some target B)

=back

Both routes apply to the traffic destined for C<192.0.2.3>. However,
the second route in the list covers a smaller number of IP addresses
and is therefore more specific, so we use that route to determine where
to target the traffic.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateRouteTable(VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateRouteTable>

Returns: a L<Paws::EC2::CreateRouteTableResult> instance

  Creates a route table for the specified VPC. After you create a route
table, you can add routes and associate the table with a subnet.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateSecurityGroup(Description => Str, GroupName => Str, [DryRun => Bool, VpcId => Str])

Each argument is described in detail in: L<Paws::EC2::CreateSecurityGroup>

Returns: a L<Paws::EC2::CreateSecurityGroupResult> instance

  Creates a security group.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see Amazon EC2
Security Groups in the I<Amazon Elastic Compute Cloud User Guide> and
Security Groups for Your VPC in the I<Amazon Virtual Private Cloud User
Guide>.

EC2-Classic: You can have up to 500 security groups.

EC2-VPC: You can create up to 500 security groups per VPC.

When you create a security group, you specify a friendly name of your
choice. You can have a security group for use in EC2-Classic with the
same name as a security group for use in a VPC. However, you can't have
two security groups for use in EC2-Classic with the same name or two
security groups for use in a VPC with the same name.

You have a default security group for use in EC2-Classic and a default
security group for use in your VPC. If you don't specify a security
group when you launch an instance, the instance is launched into the
appropriate default security group. A default security group includes a
default rule that grants instances unrestricted network access to each
other.

You can add or remove rules from your security groups using
AuthorizeSecurityGroupIngress, AuthorizeSecurityGroupEgress,
RevokeSecurityGroupIngress, and RevokeSecurityGroupEgress.


=head2 CreateSnapshot(VolumeId => Str, [Description => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateSnapshot>

Returns: a L<Paws::EC2::Snapshot> instance

  Creates a snapshot of an EBS volume and stores it in Amazon S3. You can
use snapshots for backups, to make copies of EBS volumes, and to save
data before shutting down an instance.

When a snapshot is created, any AWS Marketplace product codes that are
associated with the source volume are propagated to the snapshot.

You can take a snapshot of an attached volume that is in use. However,
snapshots only capture data that has been written to your EBS volume at
the time the snapshot command is issued; this may exclude any data that
has been cached by any applications or the operating system. If you can
pause any file systems on the volume long enough to take a snapshot,
your snapshot should be complete. However, if you cannot pause all file
writes to the volume, you should unmount the volume from within the
instance, issue the snapshot command, and then remount the volume to
ensure a consistent and complete snapshot. You may remount and use your
volume while the snapshot status is C<pending>.

To create a snapshot for EBS volumes that serve as root devices, you
should stop the instance before taking the snapshot.

Snapshots that are taken from encrypted volumes are automatically
encrypted. Volumes that are created from encrypted snapshots are also
automatically encrypted. Your encrypted volumes and any associated
snapshots always remain protected.

For more information, see Amazon Elastic Block Store and Amazon EBS
Encryption in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateSpotDatafeedSubscription(Bucket => Str, [DryRun => Bool, Prefix => Str])

Each argument is described in detail in: L<Paws::EC2::CreateSpotDatafeedSubscription>

Returns: a L<Paws::EC2::CreateSpotDatafeedSubscriptionResult> instance

  Creates a data feed for Spot instances, enabling you to view Spot
instance usage logs. You can create one data feed per AWS account. For
more information, see Spot Instance Data Feed in the I<Amazon Elastic
Compute Cloud User Guide>.


=head2 CreateSubnet(CidrBlock => Str, VpcId => Str, [AvailabilityZone => Str, DryRun => Bool, Ipv6CidrBlock => Str])

Each argument is described in detail in: L<Paws::EC2::CreateSubnet>

Returns: a L<Paws::EC2::CreateSubnetResult> instance

  Creates a subnet in an existing VPC.

When you create each subnet, you provide the VPC ID and the IPv4 CIDR
block you want for the subnet. After you create a subnet, you can't
change its CIDR block. The size of the subnet's IPv4 CIDR block can be
the same as a VPC's IPv4 CIDR block, or a subset of a VPC's IPv4 CIDR
block. If you create more than one subnet in a VPC, the subnets' CIDR
blocks must not overlap. The smallest IPv4 subnet (and VPC) you can
create uses a /28 netmask (16 IPv4 addresses), and the largest uses a
/16 netmask (65,536 IPv4 addresses).

If you've associated an IPv6 CIDR block with your VPC, you can create a
subnet with an IPv6 CIDR block that uses a /64 prefix length.

AWS reserves both the first four and the last IPv4 address in each
subnet's CIDR block. They're not available for use.

If you add more than one subnet to a VPC, they're set up in a star
topology with a logical router in the middle.

If you launch an instance in a VPC using an Amazon EBS-backed AMI, the
IP address doesn't change if you stop and restart the instance (unlike
a similar instance launched outside a VPC, which gets a new IP address
when restarted). It's therefore possible to have a subnet with no
running instances (they're all stopped), but no remaining IP addresses
available.

For more information about subnets, see Your VPC and Subnets in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 CreateTags(Resources => ArrayRef[Str|Undef], Tags => ArrayRef[L<Paws::EC2::Tag>], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateTags>

Returns: nothing

  Adds or overwrites one or more tags for the specified Amazon EC2
resource or resources. Each resource can have a maximum of 50 tags.
Each tag consists of a key and optional value. Tag keys must be unique
per resource.

For more information about tags, see Tagging Your Resources in the
I<Amazon Elastic Compute Cloud User Guide>. For more information about
creating IAM policies that control users' access to resources based on
tags, see Supported Resource-Level Permissions for Amazon EC2 API
Actions in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 CreateVolume(AvailabilityZone => Str, [DryRun => Bool, Encrypted => Bool, Iops => Int, KmsKeyId => Str, Size => Int, SnapshotId => Str, TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>], VolumeType => Str])

Each argument is described in detail in: L<Paws::EC2::CreateVolume>

Returns: a L<Paws::EC2::Volume> instance

  Creates an EBS volume that can be attached to an instance in the same
Availability Zone. The volume is created in the regional endpoint that
you send the HTTP request to. For more information see Regions and
Endpoints.

You can create a new empty volume or restore a volume from an EBS
snapshot. Any AWS Marketplace product codes from the snapshot are
propagated to the volume.

You can create encrypted volumes with the C<Encrypted> parameter.
Encrypted volumes may only be attached to instances that support Amazon
EBS encryption. Volumes that are created from encrypted snapshots are
also automatically encrypted. For more information, see Amazon EBS
Encryption in the I<Amazon Elastic Compute Cloud User Guide>.

You can tag your volumes during creation. For more information, see
Tagging Your Amazon EC2 Resources.

For more information, see Creating an Amazon EBS Volume in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 CreateVpc(CidrBlock => Str, [AmazonProvidedIpv6CidrBlock => Bool, DryRun => Bool, InstanceTenancy => Str])

Each argument is described in detail in: L<Paws::EC2::CreateVpc>

Returns: a L<Paws::EC2::CreateVpcResult> instance

  Creates a VPC with the specified IPv4 CIDR block. The smallest VPC you
can create uses a /28 netmask (16 IPv4 addresses), and the largest uses
a /16 netmask (65,536 IPv4 addresses). To help you decide how big to
make your VPC, see Your VPC and Subnets in the I<Amazon Virtual Private
Cloud User Guide>.

You can optionally request an Amazon-provided IPv6 CIDR block for the
VPC. The IPv6 CIDR block uses a /56 prefix length, and is allocated
from Amazon's pool of IPv6 addresses. You cannot choose the IPv6 range
for your VPC.

By default, each instance you launch in the VPC has the default DHCP
options, which includes only a default DNS server that we provide
(AmazonProvidedDNS). For more information about DHCP options, see DHCP
Options Sets in the I<Amazon Virtual Private Cloud User Guide>.

You can specify the instance tenancy value for the VPC when you create
it. You can't change this value for the VPC after you create it. For
more information, see Dedicated Instances in the I<Amazon Elastic
Compute Cloud User Guide>.


=head2 CreateVpcEndpoint(ServiceName => Str, VpcId => Str, [ClientToken => Str, DryRun => Bool, PolicyDocument => Str, RouteTableIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::CreateVpcEndpoint>

Returns: a L<Paws::EC2::CreateVpcEndpointResult> instance

  Creates a VPC endpoint for a specified AWS service. An endpoint enables
you to create a private connection between your VPC and another AWS
service in your account. You can specify an endpoint policy to attach
to the endpoint that will control access to the service from your VPC.
You can also specify the VPC route tables that use the endpoint.

Use DescribeVpcEndpointServices to get a list of supported AWS
services.


=head2 CreateVpcPeeringConnection([DryRun => Bool, PeerOwnerId => Str, PeerVpcId => Str, VpcId => Str])

Each argument is described in detail in: L<Paws::EC2::CreateVpcPeeringConnection>

Returns: a L<Paws::EC2::CreateVpcPeeringConnectionResult> instance

  Requests a VPC peering connection between two VPCs: a requester VPC
that you own and a peer VPC with which to create the connection. The
peer VPC can belong to another AWS account. The requester VPC and peer
VPC cannot have overlapping CIDR blocks.

The owner of the peer VPC must accept the peering request to activate
the peering connection. The VPC peering connection request expires
after 7 days, after which it cannot be accepted or rejected.

If you try to create a VPC peering connection between VPCs that have
overlapping CIDR blocks, the VPC peering connection status goes to
C<failed>.


=head2 CreateVpnConnection(CustomerGatewayId => Str, Type => Str, VpnGatewayId => Str, [DryRun => Bool, Options => L<Paws::EC2::VpnConnectionOptionsSpecification>])

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnection>

Returns: a L<Paws::EC2::CreateVpnConnectionResult> instance

  Creates a VPN connection between an existing virtual private gateway
and a VPN customer gateway. The only supported connection type is
C<ipsec.1>.

The response includes information that you need to give to your network
administrator to configure your customer gateway.

We strongly recommend that you use HTTPS when calling this operation
because the response contains sensitive cryptographic information for
configuring your customer gateway.

If you decide to shut down your VPN connection for any reason and later
create a new VPN connection, you must reconfigure your customer gateway
with the new information returned from this call.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.

For more information, see AWS Managed VPN Connections in the I<Amazon
Virtual Private Cloud User Guide>.


=head2 CreateVpnConnectionRoute(DestinationCidrBlock => Str, VpnConnectionId => Str)

Each argument is described in detail in: L<Paws::EC2::CreateVpnConnectionRoute>

Returns: nothing

  Creates a static route associated with a VPN connection between an
existing virtual private gateway and a VPN customer gateway. The static
route allows traffic to be routed from the virtual private gateway to
the VPN customer gateway.

For more information about VPN connections, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.


=head2 CreateVpnGateway(Type => Str, [AvailabilityZone => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::CreateVpnGateway>

Returns: a L<Paws::EC2::CreateVpnGatewayResult> instance

  Creates a virtual private gateway. A virtual private gateway is the
endpoint on the VPC side of your VPN connection. You can create a
virtual private gateway before creating the VPC itself.

For more information about virtual private gateways, see Adding a
Hardware Virtual Private Gateway to Your VPC in the I<Amazon Virtual
Private Cloud User Guide>.


=head2 DeleteCustomerGateway(CustomerGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteCustomerGateway>

Returns: nothing

  Deletes the specified customer gateway. You must delete the VPN
connection before you can delete the customer gateway.


=head2 DeleteDhcpOptions(DhcpOptionsId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteDhcpOptions>

Returns: nothing

  Deletes the specified set of DHCP options. You must disassociate the
set of DHCP options before you can delete it. You can disassociate the
set of DHCP options by associating either a new set of options or the
default set of options with the VPC.


=head2 DeleteEgressOnlyInternetGateway(EgressOnlyInternetGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteEgressOnlyInternetGateway>

Returns: a L<Paws::EC2::DeleteEgressOnlyInternetGatewayResult> instance

  Deletes an egress-only Internet gateway.


=head2 DeleteFlowLogs(FlowLogIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::EC2::DeleteFlowLogs>

Returns: a L<Paws::EC2::DeleteFlowLogsResult> instance

  Deletes one or more flow logs.


=head2 DeleteFpgaImage(FpgaImageId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteFpgaImage>

Returns: a L<Paws::EC2::DeleteFpgaImageResult> instance

  Deletes the specified Amazon FPGA Image (AFI).


=head2 DeleteInternetGateway(InternetGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteInternetGateway>

Returns: nothing

  Deletes the specified Internet gateway. You must detach the Internet
gateway from the VPC before you can delete it.


=head2 DeleteKeyPair(KeyName => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteKeyPair>

Returns: nothing

  Deletes the specified key pair, by removing the public key from Amazon
EC2.


=head2 DeleteNatGateway(NatGatewayId => Str)

Each argument is described in detail in: L<Paws::EC2::DeleteNatGateway>

Returns: a L<Paws::EC2::DeleteNatGatewayResult> instance

  Deletes the specified NAT gateway. Deleting a NAT gateway disassociates
its Elastic IP address, but does not release the address from your
account. Deleting a NAT gateway does not delete any NAT gateway routes
in your route tables.


=head2 DeleteNetworkAcl(NetworkAclId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAcl>

Returns: nothing

  Deletes the specified network ACL. You can't delete the ACL if it's
associated with any subnets. You can't delete the default network ACL.


=head2 DeleteNetworkAclEntry(Egress => Bool, NetworkAclId => Str, RuleNumber => Int, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkAclEntry>

Returns: nothing

  Deletes the specified ingress or egress entry (rule) from the specified
network ACL.


=head2 DeleteNetworkInterface(NetworkInterfaceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterface>

Returns: nothing

  Deletes the specified network interface. You must detach the network
interface before you can delete it.


=head2 DeleteNetworkInterfacePermission(NetworkInterfacePermissionId => Str, [DryRun => Bool, Force => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteNetworkInterfacePermission>

Returns: a L<Paws::EC2::DeleteNetworkInterfacePermissionResult> instance

  Deletes a permission for a network interface. By default, you cannot
delete the permission if the account for which you're removing the
permission has attached the network interface to an instance. However,
you can force delete the permission, regardless of any attachment.


=head2 DeletePlacementGroup(GroupName => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeletePlacementGroup>

Returns: nothing

  Deletes the specified placement group. You must terminate all instances
in the placement group before you can delete the placement group. For
more information about placement groups and cluster instances, see
Cluster Instances in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteRoute(RouteTableId => Str, [DestinationCidrBlock => Str, DestinationIpv6CidrBlock => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteRoute>

Returns: nothing

  Deletes the specified route from the specified route table.


=head2 DeleteRouteTable(RouteTableId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteRouteTable>

Returns: nothing

  Deletes the specified route table. You must disassociate the route
table from any subnets before you can delete it. You can't delete the
main route table.


=head2 DeleteSecurityGroup([DryRun => Bool, GroupId => Str, GroupName => Str])

Each argument is described in detail in: L<Paws::EC2::DeleteSecurityGroup>

Returns: nothing

  Deletes a security group.

If you attempt to delete a security group that is associated with an
instance, or is referenced by another security group, the operation
fails with C<InvalidGroup.InUse> in EC2-Classic or
C<DependencyViolation> in EC2-VPC.


=head2 DeleteSnapshot(SnapshotId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteSnapshot>

Returns: nothing

  Deletes the specified snapshot.

When you make periodic snapshots of a volume, the snapshots are
incremental, and only the blocks on the device that have changed since
your last snapshot are saved in the new snapshot. When you delete a
snapshot, only the data not needed for any other snapshot is removed.
So regardless of which prior snapshots have been deleted, all active
snapshots will have access to all the information needed to restore the
volume.

You cannot delete a snapshot of the root device of an EBS volume used
by a registered AMI. You must first de-register the AMI before you can
delete the snapshot.

For more information, see Deleting an Amazon EBS Snapshot in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DeleteSpotDatafeedSubscription([DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteSpotDatafeedSubscription>

Returns: nothing

  Deletes the data feed for Spot instances.


=head2 DeleteSubnet(SubnetId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteSubnet>

Returns: nothing

  Deletes the specified subnet. You must terminate all running instances
in the subnet before you can delete the subnet.


=head2 DeleteTags(Resources => ArrayRef[Str|Undef], [DryRun => Bool, Tags => ArrayRef[L<Paws::EC2::Tag>]])

Each argument is described in detail in: L<Paws::EC2::DeleteTags>

Returns: nothing

  Deletes the specified set of tags from the specified set of resources.

To list the current tags, use DescribeTags. For more information about
tags, see Tagging Your Resources in the I<Amazon Elastic Compute Cloud
User Guide>.


=head2 DeleteVolume(VolumeId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVolume>

Returns: nothing

  Deletes the specified EBS volume. The volume must be in the
C<available> state (not attached to an instance).

The volume may remain in the C<deleting> state for several minutes.

For more information, see Deleting an Amazon EBS Volume in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DeleteVpc(VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVpc>

Returns: nothing

  Deletes the specified VPC. You must detach or delete all gateways and
resources that are associated with the VPC before you can delete it.
For example, you must terminate all instances running in the VPC,
delete all security groups associated with the VPC (except the default
one), delete all route tables associated with the VPC (except the
default one), and so on.


=head2 DeleteVpcEndpoints(VpcEndpointIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVpcEndpoints>

Returns: a L<Paws::EC2::DeleteVpcEndpointsResult> instance

  Deletes one or more specified VPC endpoints. Deleting the endpoint also
deletes the endpoint routes in the route tables that were associated
with the endpoint.


=head2 DeleteVpcPeeringConnection(VpcPeeringConnectionId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVpcPeeringConnection>

Returns: a L<Paws::EC2::DeleteVpcPeeringConnectionResult> instance

  Deletes a VPC peering connection. Either the owner of the requester VPC
or the owner of the peer VPC can delete the VPC peering connection if
it's in the C<active> state. The owner of the requester VPC can delete
a VPC peering connection in the C<pending-acceptance> state.


=head2 DeleteVpnConnection(VpnConnectionId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnection>

Returns: nothing

  Deletes the specified VPN connection.

If you're deleting the VPC and its associated components, we recommend
that you detach the virtual private gateway from the VPC and delete the
VPC before deleting the VPN connection. If you believe that the tunnel
credentials for your VPN connection have been compromised, you can
delete the VPN connection and create a new one that has new keys,
without needing to delete the VPC or virtual private gateway. If you
create a new VPN connection, you must reconfigure the customer gateway
using the new configuration information returned with the new VPN
connection ID.


=head2 DeleteVpnConnectionRoute(DestinationCidrBlock => Str, VpnConnectionId => Str)

Each argument is described in detail in: L<Paws::EC2::DeleteVpnConnectionRoute>

Returns: nothing

  Deletes the specified static route associated with a VPN connection
between an existing virtual private gateway and a VPN customer gateway.
The static route allows traffic to be routed from the virtual private
gateway to the VPN customer gateway.


=head2 DeleteVpnGateway(VpnGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeleteVpnGateway>

Returns: nothing

  Deletes the specified virtual private gateway. We recommend that before
you delete a virtual private gateway, you detach it from the VPC and
delete the VPN connection. Note that you don't need to delete the
virtual private gateway if you plan to delete and recreate the VPN
connection between your VPC and your network.


=head2 DeregisterImage(ImageId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DeregisterImage>

Returns: nothing

  Deregisters the specified AMI. After you deregister an AMI, it can't be
used to launch new instances; however, it doesn't affect any instances
that you've already launched from the AMI. You'll continue to incur
usage costs for those instances until you terminate them.

When you deregister an Amazon EBS-backed AMI, it doesn't affect the
snapshot that was created for the root volume of the instance during
the AMI creation process. When you deregister an instance store-backed
AMI, it doesn't affect the files that you uploaded to Amazon S3 when
you created the AMI.


=head2 DescribeAccountAttributes([AttributeNames => ArrayRef[Str|Undef], DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeAccountAttributes>

Returns: a L<Paws::EC2::DescribeAccountAttributesResult> instance

  Describes attributes of your AWS account. The following are the
supported account attributes:

=over

=item *

C<supported-platforms>: Indicates whether your account can launch
instances into EC2-Classic and EC2-VPC, or only into EC2-VPC.

=item *

C<default-vpc>: The ID of the default VPC for your account, or C<none>.

=item *

C<max-instances>: The maximum number of On-Demand instances that you
can run.

=item *

C<vpc-max-security-groups-per-interface>: The maximum number of
security groups that you can assign to a network interface.

=item *

C<max-elastic-ips>: The maximum number of Elastic IP addresses that you
can allocate for use with EC2-Classic.

=item *

C<vpc-max-elastic-ips>: The maximum number of Elastic IP addresses that
you can allocate for use with EC2-VPC.

=back



=head2 DescribeAddresses([AllocationIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], PublicIps => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeAddresses>

Returns: a L<Paws::EC2::DescribeAddressesResult> instance

  Describes one or more of your Elastic IP addresses.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeAvailabilityZones([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ZoneNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeAvailabilityZones>

Returns: a L<Paws::EC2::DescribeAvailabilityZonesResult> instance

  Describes one or more of the Availability Zones that are available to
you. The results include zones only for the region you're currently
using. If there is an event impacting an Availability Zone, you can use
this request to view the state and any provided message for that
Availability Zone.

For more information, see Regions and Availability Zones in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeBundleTasks([BundleIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>]])

Each argument is described in detail in: L<Paws::EC2::DescribeBundleTasks>

Returns: a L<Paws::EC2::DescribeBundleTasksResult> instance

  Describes one or more of your bundling tasks.

Completed bundle tasks are listed for only a limited time. If your
bundle task is no longer in the list, you can still register an AMI
from it. Just use C<RegisterImage> with the Amazon S3 bucket name and
image manifest name you provided to the bundle task.


=head2 DescribeClassicLinkInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeClassicLinkInstances>

Returns: a L<Paws::EC2::DescribeClassicLinkInstancesResult> instance

  Describes one or more of your linked EC2-Classic instances. This
request only returns information about EC2-Classic instances linked to
a VPC through ClassicLink; you cannot use this request to return
information about other instances.


=head2 DescribeConversionTasks([ConversionTaskIds => ArrayRef[Str|Undef], DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeConversionTasks>

Returns: a L<Paws::EC2::DescribeConversionTasksResult> instance

  Describes one or more of your conversion tasks. For more information,
see the VM Import/Export User Guide.

For information about the import manifest referenced by this API
action, see VM Import Manifest.


=head2 DescribeCustomerGateways([CustomerGatewayIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>]])

Each argument is described in detail in: L<Paws::EC2::DescribeCustomerGateways>

Returns: a L<Paws::EC2::DescribeCustomerGatewaysResult> instance

  Describes one or more of your VPN customer gateways.

For more information about VPN customer gateways, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.


=head2 DescribeDhcpOptions([DhcpOptionsIds => ArrayRef[Str|Undef], DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>]])

Each argument is described in detail in: L<Paws::EC2::DescribeDhcpOptions>

Returns: a L<Paws::EC2::DescribeDhcpOptionsResult> instance

  Describes one or more of your DHCP options sets.

For more information about DHCP options sets, see DHCP Options Sets in
the I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeEgressOnlyInternetGateways([DryRun => Bool, EgressOnlyInternetGatewayIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeEgressOnlyInternetGateways>

Returns: a L<Paws::EC2::DescribeEgressOnlyInternetGatewaysResult> instance

  Describes one or more of your egress-only Internet gateways.


=head2 DescribeElasticGpus([DryRun => Bool, ElasticGpuIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeElasticGpus>

Returns: a L<Paws::EC2::DescribeElasticGpusResult> instance

  Describes the Elastic GPUs associated with your instances. For more
information about Elastic GPUs, see Amazon EC2 Elastic GPUs.


=head2 DescribeExportTasks([ExportTaskIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeExportTasks>

Returns: a L<Paws::EC2::DescribeExportTasksResult> instance

  Describes one or more of your export tasks.


=head2 DescribeFlowLogs([Filter => ArrayRef[L<Paws::EC2::Filter>], FlowLogIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeFlowLogs>

Returns: a L<Paws::EC2::DescribeFlowLogsResult> instance

  Describes one or more flow logs. To view the information in your flow
logs (the log streams for the network interfaces), you must use the
CloudWatch Logs console or the CloudWatch Logs API.


=head2 DescribeFpgaImageAttribute(Attribute => Str, FpgaImageId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImageAttribute>

Returns: a L<Paws::EC2::DescribeFpgaImageAttributeResult> instance

  Describes the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 DescribeFpgaImages([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], FpgaImageIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, Owners => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeFpgaImages>

Returns: a L<Paws::EC2::DescribeFpgaImagesResult> instance

  Describes one or more available Amazon FPGA Images (AFIs). These
include public AFIs, private AFIs that you own, and AFIs owned by other
AWS accounts for which you have load permissions.


=head2 DescribeHostReservationOfferings([Filter => ArrayRef[L<Paws::EC2::Filter>], MaxDuration => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingId => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservationOfferings>

Returns: a L<Paws::EC2::DescribeHostReservationOfferingsResult> instance

  Describes the Dedicated Host Reservations that are available to
purchase.

The results describe all the Dedicated Host Reservation offerings,
including offerings that may not match the instance family and region
of your Dedicated Hosts. When purchasing an offering, ensure that the
the instance family and region of the offering matches that of the
Dedicated Host/s it will be associated with. For an overview of
supported instance types, see Dedicated Hosts Overview in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DescribeHostReservations([Filter => ArrayRef[L<Paws::EC2::Filter>], HostReservationIdSet => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeHostReservations>

Returns: a L<Paws::EC2::DescribeHostReservationsResult> instance

  Describes Dedicated Host Reservations which are associated with
Dedicated Hosts in your account.


=head2 DescribeHosts([Filter => ArrayRef[L<Paws::EC2::Filter>], HostIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeHosts>

Returns: a L<Paws::EC2::DescribeHostsResult> instance

  Describes one or more of your Dedicated Hosts.

The results describe only the Dedicated Hosts in the region you're
currently using. All listed instances consume capacity on your
Dedicated Host. Dedicated Hosts that have recently been released will
be listed with the state C<released>.


=head2 DescribeIamInstanceProfileAssociations([AssociationIds => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeIamInstanceProfileAssociations>

Returns: a L<Paws::EC2::DescribeIamInstanceProfileAssociationsResult> instance

  Describes your IAM instance profile associations.


=head2 DescribeIdentityIdFormat(PrincipalArn => Str, [Resource => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeIdentityIdFormat>

Returns: a L<Paws::EC2::DescribeIdentityIdFormatResult> instance

  Describes the ID format settings for resources for the specified IAM
user, IAM role, or root user. For example, you can view the resource
types that are enabled for longer IDs. This request only returns
information about resource types whose ID formats can be modified; it
does not return information about other resource types. For more
information, see Resource IDs in the I<Amazon Elastic Compute Cloud
User Guide>.

The following resource types support longer IDs: C<instance> |
C<reservation> | C<snapshot> | C<volume>.

These settings apply to the principal specified in the request. They do
not apply to the principal that makes the request.


=head2 DescribeIdFormat([Resource => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeIdFormat>

Returns: a L<Paws::EC2::DescribeIdFormatResult> instance

  Describes the ID format settings for your resources on a per-region
basis, for example, to view which resource types are enabled for longer
IDs. This request only returns information about resource types whose
ID formats can be modified; it does not return information about other
resource types.

The following resource types support longer IDs: C<instance> |
C<reservation> | C<snapshot> | C<volume>.

These settings apply to the IAM user who makes the request; they do not
apply to the entire AWS account. By default, an IAM user defaults to
the same settings as the root user, unless they explicitly override the
settings by running the ModifyIdFormat command. Resources created with
longer IDs are visible to all IAM users, regardless of these settings
and provided that they have permission to use the relevant C<Describe>
command for the resource type.


=head2 DescribeImageAttribute(Attribute => Str, ImageId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeImageAttribute>

Returns: a L<Paws::EC2::ImageAttribute> instance

  Describes the specified attribute of the specified AMI. You can specify
only one attribute at a time.


=head2 DescribeImages([DryRun => Bool, ExecutableUsers => ArrayRef[Str|Undef], Filters => ArrayRef[L<Paws::EC2::Filter>], ImageIds => ArrayRef[Str|Undef], Owners => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeImages>

Returns: a L<Paws::EC2::DescribeImagesResult> instance

  Describes one or more of the images (AMIs, AKIs, and ARIs) available to
you. Images available to you include public images, private images that
you own, and private images owned by other AWS accounts but for which
you have explicit launch permissions.

Deregistered images are included in the returned results for an
unspecified interval after deregistration.


=head2 DescribeImportImageTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeImportImageTasks>

Returns: a L<Paws::EC2::DescribeImportImageTasksResult> instance

  Displays details about an import virtual machine or import snapshot
tasks that are already created.


=head2 DescribeImportSnapshotTasks([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], ImportTaskIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeImportSnapshotTasks>

Returns: a L<Paws::EC2::DescribeImportSnapshotTasksResult> instance

  Describes your import snapshot tasks.


=head2 DescribeInstanceAttribute(Attribute => Str, InstanceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceAttribute>

Returns: a L<Paws::EC2::InstanceAttribute> instance

  Describes the specified attribute of the specified instance. You can
specify only one attribute at a time. Valid attribute values are:
C<instanceType> | C<kernel> | C<ramdisk> | C<userData> |
C<disableApiTermination> | C<instanceInitiatedShutdownBehavior> |
C<rootDeviceName> | C<blockDeviceMapping> | C<productCodes> |
C<sourceDestCheck> | C<groupSet> | C<ebsOptimized> | C<sriovNetSupport>


=head2 DescribeInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeInstances>

Returns: a L<Paws::EC2::DescribeInstancesResult> instance

  Describes one or more of your instances.

If you specify one or more instance IDs, Amazon EC2 returns information
for those instances. If you do not specify instance IDs, Amazon EC2
returns information for all relevant instances. If you specify an
instance ID that is not valid, an error is returned. If you specify an
instance that you do not own, it is not included in the returned
results.

Recently terminated instances might appear in the returned results.
This interval is usually less than one hour.

If you describe instances in the rare case where an Availability Zone
is experiencing a service disruption and you specify instance IDs that
are in the affected zone, or do not specify any instance IDs at all,
the call fails. If you describe instances and specify only instance IDs
that are in an unaffected zone, the call works normally.


=head2 DescribeInstanceStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeInstanceStatus>

Returns: a L<Paws::EC2::DescribeInstanceStatusResult> instance

  Describes the status of one or more instances. By default, only running
instances are described, unless you specifically indicate to return the
status of all instances.

Instance status includes the following components:

=over

=item *

B<Status checks> - Amazon EC2 performs status checks on running EC2
instances to identify hardware and software issues. For more
information, see Status Checks for Your Instances and Troubleshooting
Instances with Failed Status Checks in the I<Amazon Elastic Compute
Cloud User Guide>.

=item *

B<Scheduled events> - Amazon EC2 can schedule events (such as reboot,
stop, or terminate) for your instances related to hardware issues,
software updates, or system maintenance. For more information, see
Scheduled Events for Your Instances in the I<Amazon Elastic Compute
Cloud User Guide>.

=item *

B<Instance state> - You can manage your instances from the moment you
launch them through their termination. For more information, see
Instance Lifecycle in the I<Amazon Elastic Compute Cloud User Guide>.

=back



=head2 DescribeInternetGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InternetGatewayIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeInternetGateways>

Returns: a L<Paws::EC2::DescribeInternetGatewaysResult> instance

  Describes one or more of your Internet gateways.


=head2 DescribeKeyPairs([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], KeyNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeKeyPairs>

Returns: a L<Paws::EC2::DescribeKeyPairsResult> instance

  Describes one or more of your key pairs.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DescribeMovingAddresses([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PublicIps => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeMovingAddresses>

Returns: a L<Paws::EC2::DescribeMovingAddressesResult> instance

  Describes your Elastic IP addresses that are being moved to the EC2-VPC
platform, or that are being restored to the EC2-Classic platform. This
request does not return information about any other Elastic IP
addresses in your account.


=head2 DescribeNatGateways([Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeNatGateways>

Returns: a L<Paws::EC2::DescribeNatGatewaysResult> instance

  Describes one or more of the your NAT gateways.


=head2 DescribeNetworkAcls([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], NetworkAclIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkAcls>

Returns: a L<Paws::EC2::DescribeNetworkAclsResult> instance

  Describes one or more of your network ACLs.

For more information about network ACLs, see Network ACLs in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeNetworkInterfaceAttribute(NetworkInterfaceId => Str, [Attribute => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaceAttribute>

Returns: a L<Paws::EC2::DescribeNetworkInterfaceAttributeResult> instance

  Describes a network interface attribute. You can specify only one
attribute at a time.


=head2 DescribeNetworkInterfacePermissions([Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NetworkInterfacePermissionIds => ArrayRef[Str|Undef], NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfacePermissions>

Returns: a L<Paws::EC2::DescribeNetworkInterfacePermissionsResult> instance

  Describes the permissions for your network interfaces.


=head2 DescribeNetworkInterfaces([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], NetworkInterfaceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeNetworkInterfaces>

Returns: a L<Paws::EC2::DescribeNetworkInterfacesResult> instance

  Describes one or more of your network interfaces.


=head2 DescribePlacementGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribePlacementGroups>

Returns: a L<Paws::EC2::DescribePlacementGroupsResult> instance

  Describes one or more of your placement groups. For more information
about placement groups and cluster instances, see Cluster Instances in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribePrefixLists([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, PrefixListIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribePrefixLists>

Returns: a L<Paws::EC2::DescribePrefixListsResult> instance

  Describes available AWS services in a prefix list format, which
includes the prefix list name and prefix list ID of the service and the
IP address range for the service. A prefix list ID is required for
creating an outbound security group rule that allows traffic from a VPC
to access an AWS service through a VPC endpoint.


=head2 DescribeRegions([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], RegionNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeRegions>

Returns: a L<Paws::EC2::DescribeRegionsResult> instance

  Describes one or more regions that are currently available to you.

For a list of the regions supported by Amazon EC2, see Regions and
Endpoints.


=head2 DescribeReservedInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], OfferingClass => Str, OfferingType => Str, ReservedInstancesIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstances>

Returns: a L<Paws::EC2::DescribeReservedInstancesResult> instance

  Describes one or more of the Reserved Instances that you purchased.

For more information about Reserved Instances, see Reserved Instances
in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeReservedInstancesListings([Filters => ArrayRef[L<Paws::EC2::Filter>], ReservedInstancesId => Str, ReservedInstancesListingId => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesListings>

Returns: a L<Paws::EC2::DescribeReservedInstancesListingsResult> instance

  Describes your account's Reserved Instance listings in the Reserved
Instance Marketplace.

The Reserved Instance Marketplace matches sellers who want to resell
Reserved Instance capacity that they no longer need with buyers who
want to purchase additional capacity. Reserved Instances bought and
sold through the Reserved Instance Marketplace work like any other
Reserved Instances.

As a seller, you choose to list some or all of your Reserved Instances,
and you specify the upfront price to receive for them. Your Reserved
Instances are then listed in the Reserved Instance Marketplace and are
available for purchase.

As a buyer, you specify the configuration of the Reserved Instance to
purchase, and the Marketplace matches what you're searching for with
what's available. The Marketplace first sells the lowest priced
Reserved Instances to you, and continues to sell available Reserved
Instance listings to you until your demand is met. You are charged
based on the total price of all of the listings that you purchase.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DescribeReservedInstancesModifications([Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesModifications>

Returns: a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance

  Describes the modifications made to your Reserved Instances. If no
parameter is specified, information about all your Reserved Instances
modification requests is returned. If a modification ID is specified,
only information about the specific modification is returned.

For more information, see Modifying Reserved Instances in the Amazon
Elastic Compute Cloud User Guide.


=head2 DescribeReservedInstancesOfferings([AvailabilityZone => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeReservedInstancesOfferings>

Returns: a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance

  Describes Reserved Instance offerings that are available for purchase.
With Reserved Instances, you purchase the right to launch instances for
a period of time. During that time period, you do not receive
insufficient capacity errors, and you pay a lower usage rate than the
rate charged for On-Demand instances for the actual time used.

If you have listed your own Reserved Instances for sale in the Reserved
Instance Marketplace, they will be excluded from these results. This is
to ensure that you do not purchase your own Reserved Instances.

For more information, see Reserved Instance Marketplace in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DescribeRouteTables([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], RouteTableIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeRouteTables>

Returns: a L<Paws::EC2::DescribeRouteTablesResult> instance

  Describes one or more of your route tables.

Each subnet in your VPC must be associated with a route table. If a
subnet is not explicitly associated with any route table, it is
implicitly associated with the main route table. This command does not
return the subnet ID for implicit associations.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeScheduledInstanceAvailability(FirstSlotStartTimeRange => L<Paws::EC2::SlotDateTimeRangeRequest>, Recurrence => L<Paws::EC2::ScheduledInstanceRecurrenceRequest>, [DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, MaxSlotDurationInHours => Int, MinSlotDurationInHours => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstanceAvailability>

Returns: a L<Paws::EC2::DescribeScheduledInstanceAvailabilityResult> instance

  Finds available schedules that meet the specified criteria.

You can search for an available schedule no more than 3 months in
advance. You must meet the minimum required duration of 1,200 hours per
year. For example, the minimum daily schedule is 4 hours, the minimum
weekly schedule is 24 hours, and the minimum monthly schedule is 100
hours.

After you find a schedule that meets your needs, call
PurchaseScheduledInstances to purchase Scheduled Instances with that
schedule.


=head2 DescribeScheduledInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, ScheduledInstanceIds => ArrayRef[Str|Undef], SlotStartTimeRange => L<Paws::EC2::SlotStartTimeRangeRequest>])

Each argument is described in detail in: L<Paws::EC2::DescribeScheduledInstances>

Returns: a L<Paws::EC2::DescribeScheduledInstancesResult> instance

  Describes one or more of your Scheduled Instances.


=head2 DescribeSecurityGroupReferences(GroupId => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroupReferences>

Returns: a L<Paws::EC2::DescribeSecurityGroupReferencesResult> instance

  [EC2-VPC only] Describes the VPCs on the other side of a VPC peering
connection that are referencing the security groups you've specified in
this request.


=head2 DescribeSecurityGroups([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], GroupIds => ArrayRef[Str|Undef], GroupNames => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeSecurityGroups>

Returns: a L<Paws::EC2::DescribeSecurityGroupsResult> instance

  Describes one or more of your security groups.

A security group is for use with instances either in the EC2-Classic
platform or in a specific VPC. For more information, see Amazon EC2
Security Groups in the I<Amazon Elastic Compute Cloud User Guide> and
Security Groups for Your VPC in the I<Amazon Virtual Private Cloud User
Guide>.


=head2 DescribeSnapshotAttribute(Attribute => Str, SnapshotId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshotAttribute>

Returns: a L<Paws::EC2::DescribeSnapshotAttributeResult> instance

  Describes the specified attribute of the specified snapshot. You can
specify only one attribute at a time.

For more information about EBS snapshots, see Amazon EBS Snapshots in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeSnapshots([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeSnapshots>

Returns: a L<Paws::EC2::DescribeSnapshotsResult> instance

  Describes one or more of the EBS snapshots available to you. Available
snapshots include public snapshots available for any AWS account to
launch, private snapshots that you own, and private snapshots owned by
another AWS account but for which you've been given explicit create
volume permissions.

The create volume permissions fall into the following categories:

=over

=item *

I<public>: The owner of the snapshot granted create volume permissions
for the snapshot to the C<all> group. All AWS accounts have create
volume permissions for these snapshots.

=item *

I<explicit>: The owner of the snapshot granted create volume
permissions to a specific AWS account.

=item *

I<implicit>: An AWS account has implicit create volume permissions for
all snapshots it owns.

=back

The list of snapshots returned can be modified by specifying snapshot
IDs, snapshot owners, or AWS accounts with create volume permissions.
If no options are specified, Amazon EC2 returns all snapshots for which
you have create volume permissions.

If you specify one or more snapshot IDs, only snapshots that have the
specified IDs are returned. If you specify an invalid snapshot ID, an
error is returned. If you specify a snapshot ID for which you do not
have access, it is not included in the returned results.

If you specify one or more snapshot owners using the C<OwnerIds>
option, only snapshots from the specified owners and for which you have
access are returned. The results can include the AWS account IDs of the
specified owners, C<amazon> for snapshots owned by Amazon, or C<self>
for snapshots that you own.

If you specify a list of restorable users, only snapshots with create
snapshot permissions for those users are returned. You can specify AWS
account IDs (if you own the snapshots), C<self> for snapshots for which
you own or have explicit permissions, or C<all> for public snapshots.

If you are describing a long list of snapshots, you can paginate the
output to make the list more manageable. The C<MaxResults> parameter
sets the maximum number of results returned in a single page. If the
list of results exceeds your C<MaxResults> value, then that number of
results is returned along with a C<NextToken> value that can be passed
to a subsequent C<DescribeSnapshots> request to retrieve the remaining
results.

For more information about EBS snapshots, see Amazon EBS Snapshots in
the I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeSpotDatafeedSubscription([DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotDatafeedSubscription>

Returns: a L<Paws::EC2::DescribeSpotDatafeedSubscriptionResult> instance

  Describes the data feed for Spot instances. For more information, see
Spot Instance Data Feed in the I<Amazon Elastic Compute Cloud User
Guide>.


=head2 DescribeSpotFleetInstances(SpotFleetRequestId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetInstances>

Returns: a L<Paws::EC2::DescribeSpotFleetInstancesResponse> instance

  Describes the running instances for the specified Spot fleet.


=head2 DescribeSpotFleetRequestHistory(SpotFleetRequestId => Str, StartTime => Str, [DryRun => Bool, EventType => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequestHistory>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestHistoryResponse> instance

  Describes the events for the specified Spot fleet request during the
specified time.

Spot fleet events are delayed by up to 30 seconds before they can be
described. This ensures that you can query by the last evaluated time
and not miss a recorded event.


=head2 DescribeSpotFleetRequests([DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotFleetRequests>

Returns: a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance

  Describes your Spot fleet requests.

Spot fleet requests are deleted 48 hours after they are canceled and
their instances are terminated.


=head2 DescribeSpotInstanceRequests([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], SpotInstanceRequestIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotInstanceRequests>

Returns: a L<Paws::EC2::DescribeSpotInstanceRequestsResult> instance

  Describes the Spot instance requests that belong to your account. Spot
instances are instances that Amazon EC2 launches when the bid price
that you specify exceeds the current Spot price. Amazon EC2
periodically sets the Spot price based on available Spot instance
capacity and current Spot instance requests. For more information, see
Spot Instance Requests in the I<Amazon Elastic Compute Cloud User
Guide>.

You can use C<DescribeSpotInstanceRequests> to find a running Spot
instance by examining the response. If the status of the Spot instance
is C<fulfilled>, the instance ID appears in the response and contains
the identifier of the instance. Alternatively, you can use
DescribeInstances with a filter to look for instances where the
instance lifecycle is C<spot>.

Spot instance requests are deleted 4 hours after they are canceled and
their instances are terminated.


=head2 DescribeSpotPriceHistory([AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeSpotPriceHistory>

Returns: a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance

  Describes the Spot price history. For more information, see Spot
Instance Pricing History in the I<Amazon Elastic Compute Cloud User
Guide>.

When you specify a start and end time, this operation returns the
prices of the instance types within the time range that you specified
and the time when the price changed. The price is valid within the time
period that you specified; the response merely indicates the last time
that the price changed.


=head2 DescribeStaleSecurityGroups(VpcId => Str, [DryRun => Bool, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeStaleSecurityGroups>

Returns: a L<Paws::EC2::DescribeStaleSecurityGroupsResult> instance

  [EC2-VPC only] Describes the stale security group rules for security
groups in a specified VPC. Rules are stale when they reference a
deleted security group in a peer VPC, or a security group in a peer VPC
for which the VPC peering connection has been deleted.


=head2 DescribeSubnets([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], SubnetIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeSubnets>

Returns: a L<Paws::EC2::DescribeSubnetsResult> instance

  Describes one or more of your subnets.

For more information about subnets, see Your VPC and Subnets in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 DescribeTags([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeTags>

Returns: a L<Paws::EC2::DescribeTagsResult> instance

  Describes one or more of the tags for your EC2 resources.

For more information about tags, see Tagging Your Resources in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumeAttribute(VolumeId => Str, [Attribute => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeAttribute>

Returns: a L<Paws::EC2::DescribeVolumeAttributeResult> instance

  Describes the specified attribute of the specified volume. You can
specify only one attribute at a time.

For more information about EBS volumes, see Amazon EBS Volumes in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVolumes>

Returns: a L<Paws::EC2::DescribeVolumesResult> instance

  Describes the specified EBS volumes.

If you are describing a long list of volumes, you can paginate the
output to make the list more manageable. The C<MaxResults> parameter
sets the maximum number of results returned in a single page. If the
list of results exceeds your C<MaxResults> value, then that number of
results is returned along with a C<NextToken> value that can be passed
to a subsequent C<DescribeVolumes> request to retrieve the remaining
results.

For more information about EBS volumes, see Amazon EBS Volumes in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVolumesModifications([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVolumesModifications>

Returns: a L<Paws::EC2::DescribeVolumesModificationsResult> instance

  Reports the current modification status of EBS volumes.

Current-generation EBS volumes support modification of attributes
including type, size, and (for C<io1> volumes) IOPS provisioning while
either attached to or detached from an instance. Following an action
from the API or the console to modify a volume, the status of the
modification may be C<modifying>, C<optimizing>, C<completed>, or
C<failed>. If a volume has never been modified, then certain elements
of the returned C<VolumeModification> objects are null.

You can also use CloudWatch Events to check the status of a
modification to an EBS volume. For information about CloudWatch Events,
see the Amazon CloudWatch Events User Guide. For more information, see
Monitoring Volume Modifications".


=head2 DescribeVolumeStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVolumeStatus>

Returns: a L<Paws::EC2::DescribeVolumeStatusResult> instance

  Describes the status of the specified volumes. Volume status provides
the result of the checks performed on your volumes to determine events
that can impair the performance of your volumes. The performance of a
volume can be affected if an issue occurs on the volume's underlying
host. If the volume's underlying host experiences a power outage or
system issue, after the system is restored, there could be data
inconsistencies on the volume. Volume events notify you if this occurs.
Volume actions notify you if any action needs to be taken in response
to the event.

The C<DescribeVolumeStatus> operation provides the following
information about the specified volumes:

I<Status>: Reflects the current status of the volume. The possible
values are C<ok>, C<impaired> , C<warning>, or C<insufficient-data>. If
all checks pass, the overall status of the volume is C<ok>. If the
check fails, the overall status is C<impaired>. If the status is
C<insufficient-data>, then the checks may still be taking place on your
volume at the time. We recommend that you retry the request. For more
information on volume status, see Monitoring the Status of Your
Volumes.

I<Events>: Reflect the cause of a volume status and may require you to
take action. For example, if your volume returns an C<impaired> status,
then the volume event might be C<potential-data-inconsistency>. This
means that your volume has been affected by an issue with the
underlying host, has all I/O operations disabled, and may have
inconsistent data.

I<Actions>: Reflect the actions you may have to take in response to an
event. For example, if the status of the volume is C<impaired> and the
volume event shows C<potential-data-inconsistency>, then the action
shows C<enable-volume-io>. This means that you may want to enable the
I/O operations for the volume by calling the EnableVolumeIO action and
then check the volume for data consistency.

Volume status is based on the volume status checks, and does not
reflect the volume state. Therefore, volume status does not indicate
volumes in the C<error> state (for example, when a volume is incapable
of accepting I/O.)


=head2 DescribeVpcAttribute(Attribute => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcAttribute>

Returns: a L<Paws::EC2::DescribeVpcAttributeResult> instance

  Describes the specified attribute of the specified VPC. You can specify
only one attribute at a time.


=head2 DescribeVpcClassicLink([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], VpcIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLink>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkResult> instance

  Describes the ClassicLink status of one or more VPCs.


=head2 DescribeVpcClassicLinkDnsSupport([MaxResults => Int, NextToken => Str, VpcIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DescribeVpcClassicLinkDnsSupportResult> instance

  Describes the ClassicLink DNS support status of one or more VPCs. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information, see ClassicLink in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DescribeVpcEndpoints([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VpcEndpointIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpoints>

Returns: a L<Paws::EC2::DescribeVpcEndpointsResult> instance

  Describes one or more of your VPC endpoints.


=head2 DescribeVpcEndpointServices([DryRun => Bool, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcEndpointServices>

Returns: a L<Paws::EC2::DescribeVpcEndpointServicesResult> instance

  Describes all supported AWS services that can be specified when
creating a VPC endpoint.


=head2 DescribeVpcPeeringConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], VpcPeeringConnectionIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcPeeringConnections>

Returns: a L<Paws::EC2::DescribeVpcPeeringConnectionsResult> instance

  Describes one or more of your VPC peering connections.


=head2 DescribeVpcs([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], VpcIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpcs>

Returns: a L<Paws::EC2::DescribeVpcsResult> instance

  Describes one or more of your VPCs.


=head2 DescribeVpnConnections([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], VpnConnectionIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpnConnections>

Returns: a L<Paws::EC2::DescribeVpnConnectionsResult> instance

  Describes one or more of your VPN connections.

For more information about VPN connections, see Adding a Hardware
Virtual Private Gateway to Your VPC in the I<Amazon Virtual Private
Cloud User Guide>.


=head2 DescribeVpnGateways([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], VpnGatewayIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::DescribeVpnGateways>

Returns: a L<Paws::EC2::DescribeVpnGatewaysResult> instance

  Describes one or more of your virtual private gateways.

For more information about virtual private gateways, see Adding an
IPsec Hardware VPN to Your VPC in the I<Amazon Virtual Private Cloud
User Guide>.


=head2 DetachClassicLinkVpc(InstanceId => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DetachClassicLinkVpc>

Returns: a L<Paws::EC2::DetachClassicLinkVpcResult> instance

  Unlinks (detaches) a linked EC2-Classic instance from a VPC. After the
instance has been unlinked, the VPC security groups are no longer
associated with it. An instance is automatically unlinked from a VPC
when it's stopped.


=head2 DetachInternetGateway(InternetGatewayId => Str, VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DetachInternetGateway>

Returns: nothing

  Detaches an Internet gateway from a VPC, disabling connectivity between
the Internet and the VPC. The VPC must not contain any running
instances with Elastic IP addresses or public IPv4 addresses.


=head2 DetachNetworkInterface(AttachmentId => Str, [DryRun => Bool, Force => Bool])

Each argument is described in detail in: L<Paws::EC2::DetachNetworkInterface>

Returns: nothing

  Detaches a network interface from an instance.


=head2 DetachVolume(VolumeId => Str, [Device => Str, DryRun => Bool, Force => Bool, InstanceId => Str])

Each argument is described in detail in: L<Paws::EC2::DetachVolume>

Returns: a L<Paws::EC2::VolumeAttachment> instance

  Detaches an EBS volume from an instance. Make sure to unmount any file
systems on the device within your operating system before detaching the
volume. Failure to do so can result in the volume becoming stuck in the
C<busy> state while detaching. If this happens, detachment can be
delayed indefinitely until you unmount the volume, force detachment,
reboot the instance, or all three. If an EBS volume is the root device
of an instance, it can't be detached while the instance is running. To
detach the root volume, stop the instance first.

When a volume with an AWS Marketplace product code is detached from an
instance, the product code is no longer associated with the instance.

For more information, see Detaching an Amazon EBS Volume in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 DetachVpnGateway(VpcId => Str, VpnGatewayId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DetachVpnGateway>

Returns: nothing

  Detaches a virtual private gateway from a VPC. You do this if you're
planning to turn off the VPC and not use it anymore. You can confirm a
virtual private gateway has been completely detached from a VPC by
describing the virtual private gateway (any attachments to the virtual
private gateway are also described).

You must wait for the attachment's state to switch to C<detached>
before you can delete the VPC or attach a different VPC to the virtual
private gateway.


=head2 DisableVgwRoutePropagation(GatewayId => Str, RouteTableId => Str)

Each argument is described in detail in: L<Paws::EC2::DisableVgwRoutePropagation>

Returns: nothing

  Disables a virtual private gateway (VGW) from propagating routes to a
specified route table of a VPC.


=head2 DisableVpcClassicLink(VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLink>

Returns: a L<Paws::EC2::DisableVpcClassicLinkResult> instance

  Disables ClassicLink for a VPC. You cannot disable ClassicLink for a
VPC that has EC2-Classic instances linked to it.


=head2 DisableVpcClassicLinkDnsSupport([VpcId => Str])

Each argument is described in detail in: L<Paws::EC2::DisableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::DisableVpcClassicLinkDnsSupportResult> instance

  Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames
resolve to public IP addresses when addressed between a linked
EC2-Classic instance and instances in the VPC to which it's linked. For
more information about ClassicLink, see ClassicLink in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 DisassociateAddress([AssociationId => Str, DryRun => Bool, PublicIp => Str])

Each argument is described in detail in: L<Paws::EC2::DisassociateAddress>

Returns: nothing

  Disassociates an Elastic IP address from the instance or network
interface it's associated with.

An Elastic IP address is for use in either the EC2-Classic platform or
in a VPC. For more information, see Elastic IP Addresses in the
I<Amazon Elastic Compute Cloud User Guide>.

This is an idempotent operation. If you perform the operation more than
once, Amazon EC2 doesn't return an error.


=head2 DisassociateIamInstanceProfile(AssociationId => Str)

Each argument is described in detail in: L<Paws::EC2::DisassociateIamInstanceProfile>

Returns: a L<Paws::EC2::DisassociateIamInstanceProfileResult> instance

  Disassociates an IAM instance profile from a running or stopped
instance.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 DisassociateRouteTable(AssociationId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::DisassociateRouteTable>

Returns: nothing

  Disassociates a subnet from a route table.

After you perform this action, the subnet no longer uses the routes in
the route table. Instead, it uses the routes in the VPC's main route
table. For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 DisassociateSubnetCidrBlock(AssociationId => Str)

Each argument is described in detail in: L<Paws::EC2::DisassociateSubnetCidrBlock>

Returns: a L<Paws::EC2::DisassociateSubnetCidrBlockResult> instance

  Disassociates a CIDR block from a subnet. Currently, you can
disassociate an IPv6 CIDR block only. You must detach or delete all
gateways and resources that are associated with the CIDR block before
you can disassociate it.


=head2 DisassociateVpcCidrBlock(AssociationId => Str)

Each argument is described in detail in: L<Paws::EC2::DisassociateVpcCidrBlock>

Returns: a L<Paws::EC2::DisassociateVpcCidrBlockResult> instance

  Disassociates a CIDR block from a VPC. To disassociate the CIDR block,
you must specify its association ID. You can get the association ID by
using DescribeVpcs. You must detach or delete all gateways and
resources that are associated with the CIDR block before you can
disassociate it.

You cannot disassociate the CIDR block with which you originally
created the VPC (the primary CIDR block).


=head2 EnableVgwRoutePropagation(GatewayId => Str, RouteTableId => Str)

Each argument is described in detail in: L<Paws::EC2::EnableVgwRoutePropagation>

Returns: nothing

  Enables a virtual private gateway (VGW) to propagate routes to the
specified route table of a VPC.


=head2 EnableVolumeIO(VolumeId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::EnableVolumeIO>

Returns: nothing

  Enables I/O operations for a volume that had I/O operations disabled
because the data on the volume was potentially inconsistent.


=head2 EnableVpcClassicLink(VpcId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLink>

Returns: a L<Paws::EC2::EnableVpcClassicLinkResult> instance

  Enables a VPC for ClassicLink. You can then link EC2-Classic instances
to your ClassicLink-enabled VPC to allow communication over private IP
addresses. You cannot enable your VPC for ClassicLink if any of your
VPC's route tables have existing routes for address ranges within the
C<10.0.0.0/8> IP address range, excluding local routes for VPCs in the
C<10.0.0.0/16> and C<10.1.0.0/16> IP address ranges. For more
information, see ClassicLink in the I<Amazon Elastic Compute Cloud User
Guide>.


=head2 EnableVpcClassicLinkDnsSupport([VpcId => Str])

Each argument is described in detail in: L<Paws::EC2::EnableVpcClassicLinkDnsSupport>

Returns: a L<Paws::EC2::EnableVpcClassicLinkDnsSupportResult> instance

  Enables a VPC to support DNS hostname resolution for ClassicLink. If
enabled, the DNS hostname of a linked EC2-Classic instance resolves to
its private IP address when addressed from an instance in the VPC to
which it's linked. Similarly, the DNS hostname of an instance in a VPC
resolves to its private IP address when addressed from a linked
EC2-Classic instance. For more information about ClassicLink, see
ClassicLink in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 GetConsoleOutput(InstanceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::GetConsoleOutput>

Returns: a L<Paws::EC2::GetConsoleOutputResult> instance

  Gets the console output for the specified instance.

Instances do not have a physical monitor through which you can view
their console output. They also lack physical controls that allow you
to power up, reboot, or shut them down. To allow these actions, we
provide them through the Amazon EC2 API and command line interface.

Instance console output is buffered and posted shortly after instance
boot, reboot, and termination. Amazon EC2 preserves the most recent 64
KB output, which is available for at least one hour after the most
recent post.

For Linux instances, the instance console output displays the exact
console output that would normally be displayed on a physical monitor
attached to a computer. This output is buffered because the instance
produces it and then posts it to a store where the instance's owner can
retrieve it.

For Windows instances, the instance console output includes output from
the EC2Config service.


=head2 GetConsoleScreenshot(InstanceId => Str, [DryRun => Bool, WakeUp => Bool])

Each argument is described in detail in: L<Paws::EC2::GetConsoleScreenshot>

Returns: a L<Paws::EC2::GetConsoleScreenshotResult> instance

  Retrieve a JPG-format screenshot of a running instance to help with
troubleshooting.

The returned content is Base64-encoded.


=head2 GetHostReservationPurchasePreview(HostIdSet => ArrayRef[Str|Undef], OfferingId => Str)

Each argument is described in detail in: L<Paws::EC2::GetHostReservationPurchasePreview>

Returns: a L<Paws::EC2::GetHostReservationPurchasePreviewResult> instance

  Preview a reservation purchase with configurations that match those of
your Dedicated Host. You must have active Dedicated Hosts in your
account before you purchase a reservation.

This is a preview of the PurchaseHostReservation action and does not
result in the offering being purchased.


=head2 GetPasswordData(InstanceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::GetPasswordData>

Returns: a L<Paws::EC2::GetPasswordDataResult> instance

  Retrieves the encrypted administrator password for a running Windows
instance.

The Windows password is generated at boot by the C<EC2Config> service
or C<EC2Launch> scripts (Windows Server 2016 and later). This usually
only happens the first time an instance is launched. For more
information, see EC2Config and EC2Launch in the Amazon Elastic Compute
Cloud User Guide.

For the C<EC2Config> service, the password is not generated for
rebundled AMIs unless C<Ec2SetPassword> is enabled before bundling.

The password is encrypted using the key pair that you specified when
you launched the instance. You must provide the corresponding key pair
file.

When you launch an instance, password generation and encryption may
take a few minutes. If you try to retrieve the password before it's
available, the output returns an empty string. We recommend that you
wait up to 15 minutes after launching an instance before trying to
retrieve the generated password.


=head2 GetReservedInstancesExchangeQuote(ReservedInstanceIds => ArrayRef[Str|Undef], [DryRun => Bool, TargetConfigurations => ArrayRef[L<Paws::EC2::TargetConfigurationRequest>]])

Each argument is described in detail in: L<Paws::EC2::GetReservedInstancesExchangeQuote>

Returns: a L<Paws::EC2::GetReservedInstancesExchangeQuoteResult> instance

  Returns details about the values and term of your specified Convertible
Reserved Instances. When a target configuration is specified, it
returns information about whether the exchange is valid and can be
performed.


=head2 ImportImage([Architecture => Str, ClientData => L<Paws::EC2::ClientData>, ClientToken => Str, Description => Str, DiskContainers => ArrayRef[L<Paws::EC2::ImageDiskContainer>], DryRun => Bool, Hypervisor => Str, LicenseType => Str, Platform => Str, RoleName => Str])

Each argument is described in detail in: L<Paws::EC2::ImportImage>

Returns: a L<Paws::EC2::ImportImageResult> instance

  Import single or multi-volume disk images or EBS snapshots into an
Amazon Machine Image (AMI). For more information, see Importing a VM as
an Image Using VM Import/Export in the I<VM Import/Export User Guide>.


=head2 ImportInstance(Platform => Str, [Description => Str, DiskImages => ArrayRef[L<Paws::EC2::DiskImage>], DryRun => Bool, LaunchSpecification => L<Paws::EC2::ImportInstanceLaunchSpecification>])

Each argument is described in detail in: L<Paws::EC2::ImportInstance>

Returns: a L<Paws::EC2::ImportInstanceResult> instance

  Creates an import instance task using metadata from the specified disk
image. C<ImportInstance> only supports single-volume VMs. To import
multi-volume VMs, use ImportImage. For more information, see Importing
a Virtual Machine Using the Amazon EC2 CLI.

For information about the import manifest referenced by this API
action, see VM Import Manifest.


=head2 ImportKeyPair(KeyName => Str, PublicKeyMaterial => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ImportKeyPair>

Returns: a L<Paws::EC2::ImportKeyPairResult> instance

  Imports the public key from an RSA key pair that you created with a
third-party tool. Compare this with CreateKeyPair, in which AWS creates
the key pair and gives the keys to you (AWS keeps a copy of the public
key). With ImportKeyPair, you create the key pair and give AWS just the
public key. The private key is never transferred between you and AWS.

For more information about key pairs, see Key Pairs in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 ImportSnapshot([ClientData => L<Paws::EC2::ClientData>, ClientToken => Str, Description => Str, DiskContainer => L<Paws::EC2::SnapshotDiskContainer>, DryRun => Bool, RoleName => Str])

Each argument is described in detail in: L<Paws::EC2::ImportSnapshot>

Returns: a L<Paws::EC2::ImportSnapshotResult> instance

  Imports a disk into an EBS snapshot.


=head2 ImportVolume(AvailabilityZone => Str, Image => L<Paws::EC2::DiskImageDetail>, Volume => L<Paws::EC2::VolumeDetail>, [Description => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ImportVolume>

Returns: a L<Paws::EC2::ImportVolumeResult> instance

  Creates an import volume task using metadata from the specified disk
image.For more information, see Importing Disks to Amazon EBS.

For information about the import manifest referenced by this API
action, see VM Import Manifest.


=head2 ModifyFpgaImageAttribute(FpgaImageId => Str, [Attribute => Str, Description => Str, DryRun => Bool, LoadPermission => L<Paws::EC2::LoadPermissionModifications>, Name => Str, OperationType => Str, ProductCodes => ArrayRef[Str|Undef], UserGroups => ArrayRef[Str|Undef], UserIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::ModifyFpgaImageAttribute>

Returns: a L<Paws::EC2::ModifyFpgaImageAttributeResult> instance

  Modifies the specified attribute of the specified Amazon FPGA Image
(AFI).


=head2 ModifyHosts(AutoPlacement => Str, HostIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::EC2::ModifyHosts>

Returns: a L<Paws::EC2::ModifyHostsResult> instance

  Modify the auto-placement setting of a Dedicated Host. When
auto-placement is enabled, AWS will place instances that you launch
with a tenancy of C<host>, but without targeting a specific host ID,
onto any available Dedicated Host in your account which has
auto-placement enabled. When auto-placement is disabled, you need to
provide a host ID if you want the instance to launch onto a specific
host. If no host ID is provided, the instance will be launched onto a
suitable host which has auto-placement enabled.


=head2 ModifyIdentityIdFormat(PrincipalArn => Str, Resource => Str, UseLongIds => Bool)

Each argument is described in detail in: L<Paws::EC2::ModifyIdentityIdFormat>

Returns: nothing

  Modifies the ID format of a resource for a specified IAM user, IAM
role, or the root user for an account; or all IAM users, IAM roles, and
the root user for an account. You can specify that resources should
receive longer IDs (17-character IDs) when they are created.

The following resource types support longer IDs: C<instance> |
C<reservation> | C<snapshot> | C<volume>. For more information, see
Resource IDs in the I<Amazon Elastic Compute Cloud User Guide>.

This setting applies to the principal specified in the request; it does
not apply to the principal that makes the request.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyIdFormat(Resource => Str, UseLongIds => Bool)

Each argument is described in detail in: L<Paws::EC2::ModifyIdFormat>

Returns: nothing

  Modifies the ID format for the specified resource on a per-region
basis. You can specify that resources should receive longer IDs
(17-character IDs) when they are created. The following resource types
support longer IDs: C<instance> | C<reservation> | C<snapshot> |
C<volume>.

This setting applies to the IAM user who makes the request; it does not
apply to the entire AWS account. By default, an IAM user defaults to
the same settings as the root user. If you're using this action as the
root user, then these settings apply to the entire account, unless an
IAM user explicitly overrides these settings for themselves. For more
information, see Resource IDs in the I<Amazon Elastic Compute Cloud
User Guide>.

Resources created with longer IDs are visible to all IAM roles and
users, regardless of these settings and provided that they have
permission to use the relevant C<Describe> command for the resource
type.


=head2 ModifyImageAttribute(ImageId => Str, [Attribute => Str, Description => L<Paws::EC2::AttributeValue>, DryRun => Bool, LaunchPermission => L<Paws::EC2::LaunchPermissionModifications>, OperationType => Str, ProductCodes => ArrayRef[Str|Undef], UserGroups => ArrayRef[Str|Undef], UserIds => ArrayRef[Str|Undef], Value => Str])

Each argument is described in detail in: L<Paws::EC2::ModifyImageAttribute>

Returns: nothing

  Modifies the specified attribute of the specified AMI. You can specify
only one attribute at a time.

AWS Marketplace product codes cannot be modified. Images with an AWS
Marketplace product code cannot be made public.

The SriovNetSupport enhanced networking attribute cannot be changed
using this command. Instead, enable SriovNetSupport on an instance and
create an AMI from the instance. This will result in an image with
SriovNetSupport enabled.


=head2 ModifyInstanceAttribute(InstanceId => Str, [Attribute => Str, BlockDeviceMappings => ArrayRef[L<Paws::EC2::InstanceBlockDeviceMappingSpecification>], DisableApiTermination => L<Paws::EC2::AttributeBooleanValue>, DryRun => Bool, EbsOptimized => L<Paws::EC2::AttributeBooleanValue>, EnaSupport => L<Paws::EC2::AttributeBooleanValue>, Groups => ArrayRef[Str|Undef], InstanceInitiatedShutdownBehavior => L<Paws::EC2::AttributeValue>, InstanceType => L<Paws::EC2::AttributeValue>, Kernel => L<Paws::EC2::AttributeValue>, Ramdisk => L<Paws::EC2::AttributeValue>, SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>, SriovNetSupport => L<Paws::EC2::AttributeValue>, UserData => L<Paws::EC2::BlobAttributeValue>, Value => Str])

Each argument is described in detail in: L<Paws::EC2::ModifyInstanceAttribute>

Returns: nothing

  Modifies the specified attribute of the specified instance. You can
specify only one attribute at a time.

To modify some attributes, the instance must be stopped. For more
information, see Modifying Attributes of a Stopped Instance in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 ModifyInstancePlacement(InstanceId => Str, [Affinity => Str, HostId => Str, Tenancy => Str])

Each argument is described in detail in: L<Paws::EC2::ModifyInstancePlacement>

Returns: a L<Paws::EC2::ModifyInstancePlacementResult> instance

  Set the instance affinity value for a specific stopped instance and
modify the instance tenancy setting.

Instance affinity is disabled by default. When instance affinity is
C<host> and it is not associated with a specific Dedicated Host, the
next time it is launched it will automatically be associated with the
host it lands on. This relationship will persist if the instance is
stopped/started, or rebooted.

You can modify the host ID associated with a stopped instance. If a
stopped instance has a new host ID association, the instance will
target that host when restarted.

You can modify the tenancy of a stopped instance with a tenancy of
C<host> or C<dedicated>.

Affinity, hostID, and tenancy are not required parameters, but at least
one of them must be specified in the request. Affinity and tenancy can
be modified in the same request, but tenancy can only be modified on
instances that are stopped.


=head2 ModifyNetworkInterfaceAttribute(NetworkInterfaceId => Str, [Attachment => L<Paws::EC2::NetworkInterfaceAttachmentChanges>, Description => L<Paws::EC2::AttributeValue>, DryRun => Bool, Groups => ArrayRef[Str|Undef], SourceDestCheck => L<Paws::EC2::AttributeBooleanValue>])

Each argument is described in detail in: L<Paws::EC2::ModifyNetworkInterfaceAttribute>

Returns: nothing

  Modifies the specified network interface attribute. You can specify
only one attribute at a time.


=head2 ModifyReservedInstances(ReservedInstancesIds => ArrayRef[Str|Undef], TargetConfigurations => ArrayRef[L<Paws::EC2::ReservedInstancesConfiguration>], [ClientToken => Str])

Each argument is described in detail in: L<Paws::EC2::ModifyReservedInstances>

Returns: a L<Paws::EC2::ModifyReservedInstancesResult> instance

  Modifies the Availability Zone, instance count, instance type, or
network platform (EC2-Classic or EC2-VPC) of your Standard Reserved
Instances. The Reserved Instances to be modified must be identical,
except for Availability Zone, network platform, and instance type.

For more information, see Modifying Reserved Instances in the Amazon
Elastic Compute Cloud User Guide.


=head2 ModifySnapshotAttribute(SnapshotId => Str, [Attribute => Str, CreateVolumePermission => L<Paws::EC2::CreateVolumePermissionModifications>, DryRun => Bool, GroupNames => ArrayRef[Str|Undef], OperationType => Str, UserIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::EC2::ModifySnapshotAttribute>

Returns: nothing

  Adds or removes permission settings for the specified snapshot. You may
add or remove specified AWS account IDs from a snapshot's list of
create volume permissions, but you cannot do both in a single API call.
If you need to both add and remove account IDs for a snapshot, you must
use multiple API calls.

Encrypted snapshots and snapshots with AWS Marketplace product codes
cannot be made public. Snapshots encrypted with your default CMK cannot
be shared with other accounts.

For more information on modifying snapshot permissions, see Sharing
Snapshots in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 ModifySpotFleetRequest(SpotFleetRequestId => Str, [ExcessCapacityTerminationPolicy => Str, TargetCapacity => Int])

Each argument is described in detail in: L<Paws::EC2::ModifySpotFleetRequest>

Returns: a L<Paws::EC2::ModifySpotFleetRequestResponse> instance

  Modifies the specified Spot fleet request.

While the Spot fleet request is being modified, it is in the
C<modifying> state.

To scale up your Spot fleet, increase its target capacity. The Spot
fleet launches the additional Spot instances according to the
allocation strategy for the Spot fleet request. If the allocation
strategy is C<lowestPrice>, the Spot fleet launches instances using the
Spot pool with the lowest price. If the allocation strategy is
C<diversified>, the Spot fleet distributes the instances across the
Spot pools.

To scale down your Spot fleet, decrease its target capacity. First, the
Spot fleet cancels any open bids that exceed the new target capacity.
You can request that the Spot fleet terminate Spot instances until the
size of the fleet no longer exceeds the new target capacity. If the
allocation strategy is C<lowestPrice>, the Spot fleet terminates the
instances with the highest price per unit. If the allocation strategy
is C<diversified>, the Spot fleet terminates instances across the Spot
pools. Alternatively, you can request that the Spot fleet keep the
fleet at its current size, but not replace any Spot instances that are
interrupted or that you terminate manually.


=head2 ModifySubnetAttribute(SubnetId => Str, [AssignIpv6AddressOnCreation => L<Paws::EC2::AttributeBooleanValue>, MapPublicIpOnLaunch => L<Paws::EC2::AttributeBooleanValue>])

Each argument is described in detail in: L<Paws::EC2::ModifySubnetAttribute>

Returns: nothing

  Modifies a subnet attribute. You can only modify one attribute at a
time.


=head2 ModifyVolume(VolumeId => Str, [DryRun => Bool, Iops => Int, Size => Int, VolumeType => Str])

Each argument is described in detail in: L<Paws::EC2::ModifyVolume>

Returns: a L<Paws::EC2::ModifyVolumeResult> instance

  You can modify several parameters of an existing EBS volume, including
volume size, volume type, and IOPS capacity. If your EBS volume is
attached to a current-generation EC2 instance type, you may be able to
apply these changes without stopping the instance or detaching the
volume from it. For more information about modifying an EBS volume
running Linux, see Modifying the Size, IOPS, or Type of an EBS Volume
on Linux. For more information about modifying an EBS volume running
Windows, see Modifying the Size, IOPS, or Type of an EBS Volume on
Windows.

When you complete a resize operation on your volume, you need to extend
the volume's file-system size to take advantage of the new storage
capacity. For information about extending a Linux file system, see
Extending a Linux File System. For information about extending a
Windows file system, see Extending a Windows File System.

You can use CloudWatch Events to check the status of a modification to
an EBS volume. For information about CloudWatch Events, see the Amazon
CloudWatch Events User Guide. You can also track the status of a
modification using the DescribeVolumesModifications API. For
information about tracking status changes using either method, see
Monitoring Volume Modifications.

With previous-generation instance types, resizing an EBS volume may
require detaching and reattaching the volume or stopping and restarting
the instance. For more information about modifying an EBS volume
running Linux, see Modifying the Size, IOPS, or Type of an EBS Volume
on Linux. For more information about modifying an EBS volume running
Windows, see Modifying the Size, IOPS, or Type of an EBS Volume on
Windows.

If you reach the maximum volume modification rate per volume limit, you
will need to wait at least six hours before applying further
modifications to the affected EBS volume.


=head2 ModifyVolumeAttribute(VolumeId => Str, [AutoEnableIO => L<Paws::EC2::AttributeBooleanValue>, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ModifyVolumeAttribute>

Returns: nothing

  Modifies a volume attribute.

By default, all I/O operations for the volume are suspended when the
data on the volume is determined to be potentially inconsistent, to
prevent undetectable, latent data corruption. The I/O access to the
volume can be resumed by first enabling I/O access and then checking
the data consistency on your volume.

You can change the default behavior to resume I/O operations. We
recommend that you change this only for boot volumes or for volumes
that are stateless or disposable.


=head2 ModifyVpcAttribute(VpcId => Str, [EnableDnsHostnames => L<Paws::EC2::AttributeBooleanValue>, EnableDnsSupport => L<Paws::EC2::AttributeBooleanValue>])

Each argument is described in detail in: L<Paws::EC2::ModifyVpcAttribute>

Returns: nothing

  Modifies the specified attribute of the specified VPC.


=head2 ModifyVpcEndpoint(VpcEndpointId => Str, [AddRouteTableIds => ArrayRef[Str|Undef], DryRun => Bool, PolicyDocument => Str, RemoveRouteTableIds => ArrayRef[Str|Undef], ResetPolicy => Bool])

Each argument is described in detail in: L<Paws::EC2::ModifyVpcEndpoint>

Returns: a L<Paws::EC2::ModifyVpcEndpointResult> instance

  Modifies attributes of a specified VPC endpoint. You can modify the
policy associated with the endpoint, and you can add and remove route
tables associated with the endpoint.


=head2 ModifyVpcPeeringConnectionOptions(VpcPeeringConnectionId => Str, [AccepterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>, DryRun => Bool, RequesterPeeringConnectionOptions => L<Paws::EC2::PeeringConnectionOptionsRequest>])

Each argument is described in detail in: L<Paws::EC2::ModifyVpcPeeringConnectionOptions>

Returns: a L<Paws::EC2::ModifyVpcPeeringConnectionOptionsResult> instance

  Modifies the VPC peering connection options on one side of a VPC
peering connection. You can do the following:

=over

=item *

Enable/disable communication over the peering connection between an
EC2-Classic instance that's linked to your VPC (using ClassicLink) and
instances in the peer VPC.

=item *

Enable/disable communication over the peering connection between
instances in your VPC and an EC2-Classic instance that's linked to the
peer VPC.

=item *

Enable/disable a local VPC to resolve public DNS hostnames to private
IP addresses when queried from instances in the peer VPC.

=back

If the peered VPCs are in different accounts, each owner must initiate
a separate request to modify the peering connection options, depending
on whether their VPC was the requester or accepter for the VPC peering
connection. If the peered VPCs are in the same account, you can modify
the requester and accepter options in the same request. To confirm
which VPC is the accepter and requester for a VPC peering connection,
use the DescribeVpcPeeringConnections command.


=head2 MonitorInstances(InstanceIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::MonitorInstances>

Returns: a L<Paws::EC2::MonitorInstancesResult> instance

  Enables detailed monitoring for a running instance. Otherwise, basic
monitoring is enabled. For more information, see Monitoring Your
Instances and Volumes in the I<Amazon Elastic Compute Cloud User
Guide>.

To disable detailed monitoring, see .


=head2 MoveAddressToVpc(PublicIp => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::MoveAddressToVpc>

Returns: a L<Paws::EC2::MoveAddressToVpcResult> instance

  Moves an Elastic IP address from the EC2-Classic platform to the
EC2-VPC platform. The Elastic IP address must be allocated to your
account for more than 24 hours, and it must not be associated with an
instance. After the Elastic IP address is moved, it is no longer
available for use in the EC2-Classic platform, unless you move it back
using the RestoreAddressToClassic request. You cannot move an Elastic
IP address that was originally allocated for use in the EC2-VPC
platform to the EC2-Classic platform.


=head2 PurchaseHostReservation(HostIdSet => ArrayRef[Str|Undef], OfferingId => Str, [ClientToken => Str, CurrencyCode => Str, LimitPrice => Str])

Each argument is described in detail in: L<Paws::EC2::PurchaseHostReservation>

Returns: a L<Paws::EC2::PurchaseHostReservationResult> instance

  Purchase a reservation with configurations that match those of your
Dedicated Host. You must have active Dedicated Hosts in your account
before you purchase a reservation. This action results in the specified
reservation being purchased and charged to your account.


=head2 PurchaseReservedInstancesOffering(InstanceCount => Int, ReservedInstancesOfferingId => Str, [DryRun => Bool, LimitPrice => L<Paws::EC2::ReservedInstanceLimitPrice>])

Each argument is described in detail in: L<Paws::EC2::PurchaseReservedInstancesOffering>

Returns: a L<Paws::EC2::PurchaseReservedInstancesOfferingResult> instance

  Purchases a Reserved Instance for use with your account. With Reserved
Instances, you pay a lower hourly rate compared to On-Demand instance
pricing.

Use DescribeReservedInstancesOfferings to get a list of Reserved
Instance offerings that match your specifications. After you've
purchased a Reserved Instance, you can check for your new Reserved
Instance with DescribeReservedInstances.

For more information, see Reserved Instances and Reserved Instance
Marketplace in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 PurchaseScheduledInstances(PurchaseRequests => ArrayRef[L<Paws::EC2::PurchaseRequest>], [ClientToken => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::PurchaseScheduledInstances>

Returns: a L<Paws::EC2::PurchaseScheduledInstancesResult> instance

  Purchases one or more Scheduled Instances with the specified schedule.

Scheduled Instances enable you to purchase Amazon EC2 compute capacity
by the hour for a one-year term. Before you can purchase a Scheduled
Instance, you must call DescribeScheduledInstanceAvailability to check
for available schedules and obtain a purchase token. After you purchase
a Scheduled Instance, you must call RunScheduledInstances during each
scheduled time period.

After you purchase a Scheduled Instance, you can't cancel, modify, or
resell your purchase.


=head2 RebootInstances(InstanceIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::RebootInstances>

Returns: nothing

  Requests a reboot of one or more instances. This operation is
asynchronous; it only queues a request to reboot the specified
instances. The operation succeeds if the instances are valid and belong
to you. Requests to reboot terminated instances are ignored.

If an instance does not cleanly shut down within four minutes, Amazon
EC2 performs a hard reboot.

For more information about troubleshooting, see Getting Console Output
and Rebooting Instances in the I<Amazon Elastic Compute Cloud User
Guide>.


=head2 RegisterImage(Name => Str, [Architecture => Str, BillingProducts => ArrayRef[Str|Undef], BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>], Description => Str, DryRun => Bool, EnaSupport => Bool, ImageLocation => Str, KernelId => Str, RamdiskId => Str, RootDeviceName => Str, SriovNetSupport => Str, VirtualizationType => Str])

Each argument is described in detail in: L<Paws::EC2::RegisterImage>

Returns: a L<Paws::EC2::RegisterImageResult> instance

  Registers an AMI. When you're creating an AMI, this is the final step
you must complete before you can launch an instance from the AMI. For
more information about creating AMIs, see Creating Your Own AMIs in the
I<Amazon Elastic Compute Cloud User Guide>.

For Amazon EBS-backed instances, CreateImage creates and registers the
AMI in a single request, so you don't have to register the AMI
yourself.

You can also use C<RegisterImage> to create an Amazon EBS-backed Linux
AMI from a snapshot of a root device volume. You specify the snapshot
using the block device mapping. For more information, see Launching a
Linux Instance from a Backup in the I<Amazon Elastic Compute Cloud User
Guide>.

You can't register an image where a secondary (non-root) snapshot has
AWS Marketplace product codes.

Some Linux distributions, such as Red Hat Enterprise Linux (RHEL) and
SUSE Linux Enterprise Server (SLES), use the EC2 billing product code
associated with an AMI to verify the subscription status for package
updates. Creating an AMI from an EBS snapshot does not maintain this
billing code, and subsequent instances launched from such an AMI will
not be able to connect to package update infrastructure. To create an
AMI that must retain billing codes, see CreateImage.

If needed, you can deregister an AMI at any time. Any modifications you
make to an AMI backed by an instance store volume invalidates its
registration. If you make changes to an image, deregister the previous
image and register the new image.


=head2 RejectVpcPeeringConnection(VpcPeeringConnectionId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::RejectVpcPeeringConnection>

Returns: a L<Paws::EC2::RejectVpcPeeringConnectionResult> instance

  Rejects a VPC peering connection request. The VPC peering connection
must be in the C<pending-acceptance> state. Use the
DescribeVpcPeeringConnections request to view your outstanding VPC
peering connection requests. To delete an active VPC peering
connection, or to delete a VPC peering connection request that you
initiated, use DeleteVpcPeeringConnection.


=head2 ReleaseAddress([AllocationId => Str, DryRun => Bool, PublicIp => Str])

Each argument is described in detail in: L<Paws::EC2::ReleaseAddress>

Returns: nothing

  Releases the specified Elastic IP address.

[EC2-Classic, default VPC] Releasing an Elastic IP address
automatically disassociates it from any instance that it's associated
with. To disassociate an Elastic IP address without releasing it, use
DisassociateAddress.

[Nondefault VPC] You must use DisassociateAddress to disassociate the
Elastic IP address before you can release it. Otherwise, Amazon EC2
returns an error (C<InvalidIPAddress.InUse>).

After releasing an Elastic IP address, it is released to the IP address
pool. Be sure to update your DNS records and any servers or devices
that communicate with the address. If you attempt to release an Elastic
IP address that you already released, you'll get an C<AuthFailure>
error if the address is already allocated to another AWS account.

[EC2-VPC] After you release an Elastic IP address for use in a VPC, you
might be able to recover it. For more information, see AllocateAddress.


=head2 ReleaseHosts(HostIds => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::EC2::ReleaseHosts>

Returns: a L<Paws::EC2::ReleaseHostsResult> instance

  When you no longer want to use an On-Demand Dedicated Host it can be
released. On-Demand billing is stopped and the host goes into
C<released> state. The host ID of Dedicated Hosts that have been
released can no longer be specified in another request, e.g.,
ModifyHosts. You must stop or terminate all instances on a host before
it can be released.

When Dedicated Hosts are released, it make take some time for them to
stop counting toward your limit and you may receive capacity errors
when trying to allocate new Dedicated hosts. Try waiting a few minutes,
and then try again.

Released hosts will still appear in a DescribeHosts response.


=head2 ReplaceIamInstanceProfileAssociation(AssociationId => Str, IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>)

Each argument is described in detail in: L<Paws::EC2::ReplaceIamInstanceProfileAssociation>

Returns: a L<Paws::EC2::ReplaceIamInstanceProfileAssociationResult> instance

  Replaces an IAM instance profile for the specified running instance.
You can use this action to change the IAM instance profile that's
associated with an instance without having to disassociate the existing
IAM instance profile first.

Use DescribeIamInstanceProfileAssociations to get the association ID.


=head2 ReplaceNetworkAclAssociation(AssociationId => Str, NetworkAclId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclAssociation>

Returns: a L<Paws::EC2::ReplaceNetworkAclAssociationResult> instance

  Changes which network ACL a subnet is associated with. By default when
you create a subnet, it's automatically associated with the default
network ACL. For more information about network ACLs, see Network ACLs
in the I<Amazon Virtual Private Cloud User Guide>.


=head2 ReplaceNetworkAclEntry(Egress => Bool, NetworkAclId => Str, Protocol => Str, RuleAction => Str, RuleNumber => Int, [CidrBlock => Str, DryRun => Bool, IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>, Ipv6CidrBlock => Str, PortRange => L<Paws::EC2::PortRange>])

Each argument is described in detail in: L<Paws::EC2::ReplaceNetworkAclEntry>

Returns: nothing

  Replaces an entry (rule) in a network ACL. For more information about
network ACLs, see Network ACLs in the I<Amazon Virtual Private Cloud
User Guide>.


=head2 ReplaceRoute(RouteTableId => Str, [DestinationCidrBlock => Str, DestinationIpv6CidrBlock => Str, DryRun => Bool, EgressOnlyInternetGatewayId => Str, GatewayId => Str, InstanceId => Str, NatGatewayId => Str, NetworkInterfaceId => Str, VpcPeeringConnectionId => Str])

Each argument is described in detail in: L<Paws::EC2::ReplaceRoute>

Returns: nothing

  Replaces an existing route within a route table in a VPC. You must
provide only one of the following: Internet gateway or virtual private
gateway, NAT instance, NAT gateway, VPC peering connection, network
interface, or egress-only Internet gateway.

For more information about route tables, see Route Tables in the
I<Amazon Virtual Private Cloud User Guide>.


=head2 ReplaceRouteTableAssociation(AssociationId => Str, RouteTableId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ReplaceRouteTableAssociation>

Returns: a L<Paws::EC2::ReplaceRouteTableAssociationResult> instance

  Changes the route table associated with a given subnet in a VPC. After
the operation completes, the subnet uses the routes in the new route
table it's associated with. For more information about route tables,
see Route Tables in the I<Amazon Virtual Private Cloud User Guide>.

You can also use ReplaceRouteTableAssociation to change which table is
the main route table in the VPC. You just specify the main route
table's association ID and the route table to be the new main route
table.


=head2 ReportInstanceStatus(Instances => ArrayRef[Str|Undef], ReasonCodes => ArrayRef[Str|Undef], Status => Str, [Description => Str, DryRun => Bool, EndTime => Str, StartTime => Str])

Each argument is described in detail in: L<Paws::EC2::ReportInstanceStatus>

Returns: nothing

  Submits feedback about the status of an instance. The instance must be
in the C<running> state. If your experience with the instance differs
from the instance status returned by DescribeInstanceStatus, use
ReportInstanceStatus to report your experience with the instance.
Amazon EC2 collects this information to improve the accuracy of status
checks.

Use of this action does not change the value returned by
DescribeInstanceStatus.


=head2 RequestSpotFleet(SpotFleetRequestConfig => L<Paws::EC2::SpotFleetRequestConfigData>, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::RequestSpotFleet>

Returns: a L<Paws::EC2::RequestSpotFleetResponse> instance

  Creates a Spot fleet request.

You can submit a single request that includes multiple launch
specifications that vary by instance type, AMI, Availability Zone, or
subnet.

By default, the Spot fleet requests Spot instances in the Spot pool
where the price per unit is the lowest. Each launch specification can
include its own instance weighting that reflects the value of the
instance type to your application workload.

Alternatively, you can specify that the Spot fleet distribute the
target capacity across the Spot pools included in its launch
specifications. By ensuring that the Spot instances in your Spot fleet
are in different Spot pools, you can improve the availability of your
fleet.

For more information, see Spot Fleet Requests in the I<Amazon Elastic
Compute Cloud User Guide>.


=head2 RequestSpotInstances(SpotPrice => Str, [AvailabilityZoneGroup => Str, BlockDurationMinutes => Int, ClientToken => Str, DryRun => Bool, InstanceCount => Int, InstanceInterruptionBehavior => Str, LaunchGroup => Str, LaunchSpecification => L<Paws::EC2::RequestSpotLaunchSpecification>, Type => Str, ValidFrom => Str, ValidUntil => Str])

Each argument is described in detail in: L<Paws::EC2::RequestSpotInstances>

Returns: a L<Paws::EC2::RequestSpotInstancesResult> instance

  Creates a Spot instance request. Spot instances are instances that
Amazon EC2 launches when the bid price that you specify exceeds the
current Spot price. Amazon EC2 periodically sets the Spot price based
on available Spot Instance capacity and current Spot instance requests.
For more information, see Spot Instance Requests in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 ResetFpgaImageAttribute(FpgaImageId => Str, [Attribute => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ResetFpgaImageAttribute>

Returns: a L<Paws::EC2::ResetFpgaImageAttributeResult> instance

  Resets the specified attribute of the specified Amazon FPGA Image (AFI)
to its default value. You can only reset the load permission attribute.


=head2 ResetImageAttribute(Attribute => Str, ImageId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ResetImageAttribute>

Returns: nothing

  Resets an attribute of an AMI to its default value.

The productCodes attribute can't be reset.


=head2 ResetInstanceAttribute(Attribute => Str, InstanceId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ResetInstanceAttribute>

Returns: nothing

  Resets an attribute of an instance to its default value. To reset the
C<kernel> or C<ramdisk>, the instance must be in a stopped state. To
reset the C<sourceDestCheck>, the instance can be either running or
stopped.

The C<sourceDestCheck> attribute controls whether source/destination
checking is enabled. The default value is C<true>, which means checking
is enabled. This value must be C<false> for a NAT instance to perform
NAT. For more information, see NAT Instances in the I<Amazon Virtual
Private Cloud User Guide>.


=head2 ResetNetworkInterfaceAttribute(NetworkInterfaceId => Str, [DryRun => Bool, SourceDestCheck => Str])

Each argument is described in detail in: L<Paws::EC2::ResetNetworkInterfaceAttribute>

Returns: nothing

  Resets a network interface attribute. You can specify only one
attribute at a time.


=head2 ResetSnapshotAttribute(Attribute => Str, SnapshotId => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::ResetSnapshotAttribute>

Returns: nothing

  Resets permission settings for the specified snapshot.

For more information on modifying snapshot permissions, see Sharing
Snapshots in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 RestoreAddressToClassic(PublicIp => Str, [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::RestoreAddressToClassic>

Returns: a L<Paws::EC2::RestoreAddressToClassicResult> instance

  Restores an Elastic IP address that was previously moved to the EC2-VPC
platform back to the EC2-Classic platform. You cannot move an Elastic
IP address that was originally allocated for use in EC2-VPC. The
Elastic IP address must not be associated with an instance or network
interface.


=head2 RevokeSecurityGroupEgress(GroupId => Str, [CidrIp => Str, DryRun => Bool, FromPort => Int, IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], IpProtocol => Str, SourceSecurityGroupName => Str, SourceSecurityGroupOwnerId => Str, ToPort => Int])

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupEgress>

Returns: nothing

  [EC2-VPC only] Removes one or more egress rules from a security group
for EC2-VPC. This action doesn't apply to security groups for use in
EC2-Classic. To remove a rule, the values that you specify (for
example, ports) must match the existing rule's values exactly.

Each rule consists of the protocol and the IPv4 or IPv6 CIDR range or
source security group. For the TCP and UDP protocols, you must also
specify the destination port or range of ports. For the ICMP protocol,
you must also specify the ICMP type and code. If the security group
rule has a description, you do not have to specify the description to
revoke the rule.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RevokeSecurityGroupIngress([CidrIp => Str, DryRun => Bool, FromPort => Int, GroupId => Str, GroupName => Str, IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], IpProtocol => Str, SourceSecurityGroupName => Str, SourceSecurityGroupOwnerId => Str, ToPort => Int])

Each argument is described in detail in: L<Paws::EC2::RevokeSecurityGroupIngress>

Returns: nothing

  Removes one or more ingress rules from a security group. To remove a
rule, the values that you specify (for example, ports) must match the
existing rule's values exactly.

[EC2-Classic security groups only] If the values you specify do not
match the existing rule's values, no error is returned. Use
DescribeSecurityGroups to verify that the rule has been removed.

Each rule consists of the protocol and the CIDR range or source
security group. For the TCP and UDP protocols, you must also specify
the destination port or range of ports. For the ICMP protocol, you must
also specify the ICMP type and code. If the security group rule has a
description, you do not have to specify the description to revoke the
rule.

Rule changes are propagated to instances within the security group as
quickly as possible. However, a small delay might occur.


=head2 RunInstances(ImageId => Str, MaxCount => Int, MinCount => Int, [AdditionalInfo => Str, BlockDeviceMappings => ArrayRef[L<Paws::EC2::BlockDeviceMapping>], ClientToken => Str, DisableApiTermination => Bool, DryRun => Bool, EbsOptimized => Bool, ElasticGpuSpecification => ArrayRef[L<Paws::EC2::ElasticGpuSpecification>], IamInstanceProfile => L<Paws::EC2::IamInstanceProfileSpecification>, InstanceInitiatedShutdownBehavior => Str, InstanceType => Str, Ipv6AddressCount => Int, Ipv6Addresses => ArrayRef[L<Paws::EC2::InstanceIpv6Address>], KernelId => Str, KeyName => Str, Monitoring => L<Paws::EC2::RunInstancesMonitoringEnabled>, NetworkInterfaces => ArrayRef[L<Paws::EC2::InstanceNetworkInterfaceSpecification>], Placement => L<Paws::EC2::Placement>, PrivateIpAddress => Str, RamdiskId => Str, SecurityGroupIds => ArrayRef[Str|Undef], SecurityGroups => ArrayRef[Str|Undef], SubnetId => Str, TagSpecifications => ArrayRef[L<Paws::EC2::TagSpecification>], UserData => Str])

Each argument is described in detail in: L<Paws::EC2::RunInstances>

Returns: a L<Paws::EC2::Reservation> instance

  Launches the specified number of instances using an AMI for which you
have permissions.

You can specify a number of options, or leave the default options. The
following rules apply:

=over

=item *

[EC2-VPC] If you don't specify a subnet ID, we choose a default subnet
from your default VPC for you. If you don't have a default VPC, you
must specify a subnet ID in the request.

=item *

[EC2-Classic] If don't specify an Availability Zone, we choose one for
you.

=item *

Some instance types must be launched into a VPC. If you do not have a
default VPC, or if you do not specify a subnet ID, the request fails.
For more information, see Instance Types Available Only in a VPC.

=item *

[EC2-VPC] All instances have a network interface with a primary private
IPv4 address. If you don't specify this address, we choose one from the
IPv4 range of your subnet.

=item *

Not all instance types support IPv6 addresses. For more information,
see Instance Types.

=item *

If you don't specify a security group ID, we use the default security
group. For more information, see Security Groups.

=item *

If any of the AMIs have a product code attached for which the user has
not subscribed, the request fails.

=back

To ensure faster instance launches, break up large requests into
smaller batches. For example, create five separate launch requests for
100 instances each instead of one launch request for 500 instances.

An instance is ready for you to use when it's in the C<running> state.
You can check the state of your instance using DescribeInstances. You
can tag instances and EBS volumes during launch, after launch, or both.
For more information, see CreateTags and Tagging Your Amazon EC2
Resources.

Linux instances have access to the public key of the key pair at boot.
You can use this key to provide secure access to the instance. Amazon
EC2 public images use this feature to provide secure access without
passwords. For more information, see Key Pairs in the I<Amazon Elastic
Compute Cloud User Guide>.

For troubleshooting, see What To Do If An Instance Immediately
Terminates, and Troubleshooting Connecting to Your Instance in the
I<Amazon Elastic Compute Cloud User Guide>.


=head2 RunScheduledInstances(LaunchSpecification => L<Paws::EC2::ScheduledInstancesLaunchSpecification>, ScheduledInstanceId => Str, [ClientToken => Str, DryRun => Bool, InstanceCount => Int])

Each argument is described in detail in: L<Paws::EC2::RunScheduledInstances>

Returns: a L<Paws::EC2::RunScheduledInstancesResult> instance

  Launches the specified Scheduled Instances.

Before you can launch a Scheduled Instance, you must purchase it and
obtain an identifier using PurchaseScheduledInstances.

You must launch a Scheduled Instance during its scheduled time period.
You can't stop or reboot a Scheduled Instance, but you can terminate it
as needed. If you terminate a Scheduled Instance before the current
scheduled time period ends, you can launch it again after a few
minutes. For more information, see Scheduled Instances in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 StartInstances(InstanceIds => ArrayRef[Str|Undef], [AdditionalInfo => Str, DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::StartInstances>

Returns: a L<Paws::EC2::StartInstancesResult> instance

  Starts an Amazon EBS-backed instance that you've previously stopped.

Instances that use Amazon EBS volumes as their root devices can be
quickly stopped and started. When an instance is stopped, the compute
resources are released and you are not billed for instance usage.
However, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage. You
can restart your instance at any time. Every time you start your
Windows instance, Amazon EC2 charges you for a full instance hour. If
you stop and restart your Windows instance, a new instance hour begins
and Amazon EC2 charges you for another full instance hour even if you
are still within the same 60-minute period when it was stopped. Every
time you start your Linux instance, Amazon EC2 charges a one-minute
minimum for instance usage, and thereafter charges per second for
instance usage.

Before stopping an instance, make sure it is in a state from which it
can be restarted. Stopping an instance does not preserve data stored in
RAM.

Performing this operation on an instance that uses an instance store as
its root device returns an error.

For more information, see Stopping Instances in the I<Amazon Elastic
Compute Cloud User Guide>.


=head2 StopInstances(InstanceIds => ArrayRef[Str|Undef], [DryRun => Bool, Force => Bool])

Each argument is described in detail in: L<Paws::EC2::StopInstances>

Returns: a L<Paws::EC2::StopInstancesResult> instance

  Stops an Amazon EBS-backed instance.

We don't charge usage for a stopped instance, or data transfer fees;
however, your root partition Amazon EBS volume remains and continues to
persist your data, and you are charged for Amazon EBS volume usage.
Every time you start your Windows instance, Amazon EC2 charges you for
a full instance hour. If you stop and restart your Windows instance, a
new instance hour begins and Amazon EC2 charges you for another full
instance hour even if you are still within the same 60-minute period
when it was stopped. Every time you start your Linux instance, Amazon
EC2 charges a one-minute minimum for instance usage, and thereafter
charges per second for instance usage.

You can't start or stop Spot Instances, and you can't stop instance
store-backed instances.

When you stop an instance, we shut it down. You can restart your
instance at any time. Before stopping an instance, make sure it is in a
state from which it can be restarted. Stopping an instance does not
preserve data stored in RAM.

Stopping an instance is different to rebooting or terminating it. For
example, when you stop an instance, the root device and any other
devices attached to the instance persist. When you terminate an
instance, the root device and any other devices attached during the
instance launch are automatically deleted. For more information about
the differences between rebooting, stopping, and terminating instances,
see Instance Lifecycle in the I<Amazon Elastic Compute Cloud User
Guide>.

When you stop an instance, we attempt to shut it down forcibly after a
short while. If your instance appears stuck in the stopping state after
a period of time, there may be an issue with the underlying host
computer. For more information, see Troubleshooting Stopping Your
Instance in the I<Amazon Elastic Compute Cloud User Guide>.


=head2 TerminateInstances(InstanceIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::TerminateInstances>

Returns: a L<Paws::EC2::TerminateInstancesResult> instance

  Shuts down one or more instances. This operation is idempotent; if you
terminate an instance more than once, each call succeeds.

If you specify multiple instances and the request fails (for example,
because of a single incorrect instance ID), none of the instances are
terminated.

Terminated instances remain visible after termination (for
approximately one hour).

By default, Amazon EC2 deletes all EBS volumes that were attached when
the instance launched. Volumes attached after instance launch continue
running.

You can stop, start, and terminate EBS-backed instances. You can only
terminate instance store-backed instances. What happens to an instance
differs if you stop it or terminate it. For example, when you stop an
instance, the root device and any other devices attached to the
instance persist. When you terminate an instance, any attached EBS
volumes with the C<DeleteOnTermination> block device mapping parameter
set to C<true> are automatically deleted. For more information about
the differences between stopping and terminating instances, see
Instance Lifecycle in the I<Amazon Elastic Compute Cloud User Guide>.

For more information about troubleshooting, see Troubleshooting
Terminating Your Instance in the I<Amazon Elastic Compute Cloud User
Guide>.


=head2 UnassignIpv6Addresses(Ipv6Addresses => ArrayRef[Str|Undef], NetworkInterfaceId => Str)

Each argument is described in detail in: L<Paws::EC2::UnassignIpv6Addresses>

Returns: a L<Paws::EC2::UnassignIpv6AddressesResult> instance

  Unassigns one or more IPv6 addresses from a network interface.


=head2 UnassignPrivateIpAddresses(NetworkInterfaceId => Str, PrivateIpAddresses => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::EC2::UnassignPrivateIpAddresses>

Returns: nothing

  Unassigns one or more secondary private IP addresses from a network
interface.


=head2 UnmonitorInstances(InstanceIds => ArrayRef[Str|Undef], [DryRun => Bool])

Each argument is described in detail in: L<Paws::EC2::UnmonitorInstances>

Returns: a L<Paws::EC2::UnmonitorInstancesResult> instance

  Disables detailed monitoring for a running instance. For more
information, see Monitoring Your Instances and Volumes in the I<Amazon
Elastic Compute Cloud User Guide>.


=head2 UpdateSecurityGroupRuleDescriptionsEgress(IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], [DryRun => Bool, GroupId => Str, GroupName => Str])

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsEgressResult> instance

  [EC2-VPC only] Updates the description of an egress (outbound) security
group rule. You can replace an existing description, or add a
description to a rule that did not have one previously.

You specify the description as part of the IP permissions structure.
You can remove a description for a security group rule by omitting the
description parameter in the request.


=head2 UpdateSecurityGroupRuleDescriptionsIngress(IpPermissions => ArrayRef[L<Paws::EC2::IpPermission>], [DryRun => Bool, GroupId => Str, GroupName => Str])

Each argument is described in detail in: L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngress>

Returns: a L<Paws::EC2::UpdateSecurityGroupRuleDescriptionsIngressResult> instance

  Updates the description of an ingress (inbound) security group rule.
You can replace an existing description, or add a description to a rule
that did not have one previously.

You specify the description as part of the IP permissions structure.
You can remove a description for a security group rule by omitting the
description parameter in the request.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllInstances(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstances([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Reservations, passing the object as the first parameter, and the string 'Reservations' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstancesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeAllInstances => Bool, InstanceIds => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceStatuses, passing the object as the first parameter, and the string 'InstanceStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeInstanceStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllNatGateways(sub { },[Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])

=head2 DescribeAllNatGateways([Filter => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NatGatewayIds => ArrayRef[Str|Undef], NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - NatGateways, passing the object as the first parameter, and the string 'NatGateways' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeNatGatewaysResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesModifications(sub { },[Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesModifications([Filters => ArrayRef[L<Paws::EC2::Filter>], NextToken => Str, ReservedInstancesModificationIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesModifications, passing the object as the first parameter, and the string 'ReservedInstancesModifications' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesModificationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllReservedInstancesOfferings(sub { },[AvailabilityZone => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])

=head2 DescribeAllReservedInstancesOfferings([AvailabilityZone => Str, DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], IncludeMarketplace => Bool, InstanceTenancy => Str, InstanceType => Str, MaxDuration => Int, MaxInstanceCount => Int, MaxResults => Int, MinDuration => Int, NextToken => Str, OfferingClass => Str, OfferingType => Str, ProductDescription => Str, ReservedInstancesOfferingIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ReservedInstancesOfferings, passing the object as the first parameter, and the string 'ReservedInstancesOfferings' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeReservedInstancesOfferingsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSnapshots(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSnapshots([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, OwnerIds => ArrayRef[Str|Undef], RestorableByUserIds => ArrayRef[Str|Undef], SnapshotIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Snapshots, passing the object as the first parameter, and the string 'Snapshots' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSnapshotsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotFleetRequests(sub { },[DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])

=head2 DescribeAllSpotFleetRequests([DryRun => Bool, MaxResults => Int, NextToken => Str, SpotFleetRequestIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotFleetRequestConfigs, passing the object as the first parameter, and the string 'SpotFleetRequestConfigs' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotFleetRequestsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllSpotPriceHistory(sub { },[AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])

=head2 DescribeAllSpotPriceHistory([AvailabilityZone => Str, DryRun => Bool, EndTime => Str, Filters => ArrayRef[L<Paws::EC2::Filter>], InstanceTypes => ArrayRef[Str|Undef], MaxResults => Int, NextToken => Str, ProductDescriptions => ArrayRef[Str|Undef], StartTime => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - SpotPriceHistory, passing the object as the first parameter, and the string 'SpotPriceHistory' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeSpotPriceHistoryResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllTags(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllTags([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Tags, passing the object as the first parameter, and the string 'Tags' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeTagsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumes(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumes([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Volumes, passing the object as the first parameter, and the string 'Volumes' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumesResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllVolumeStatus(sub { },[DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])

=head2 DescribeAllVolumeStatus([DryRun => Bool, Filters => ArrayRef[L<Paws::EC2::Filter>], MaxResults => Int, NextToken => Str, VolumeIds => ArrayRef[Str|Undef]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - VolumeStatuses, passing the object as the first parameter, and the string 'VolumeStatuses' as the second parameter 

If not, it will return a a L<Paws::EC2::DescribeVolumeStatusResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

