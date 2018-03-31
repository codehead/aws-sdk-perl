package Paws::SSM;
  use Moose;
  sub service { 'ssm' }
  sub version { '2014-11-06' }
  sub target_prefix { 'AmazonSSM' }
  sub json_version { "1.1" }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::JsonCaller', 'Paws::Net::JsonResponse';

  
  sub AddTagsToResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::AddTagsToResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CancelCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CancelCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateActivation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateActivation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAssociationBatch {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateAssociationBatch', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreatePatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateResourceDataSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::CreateResourceDataSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteActivation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteActivation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeletePatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteResourceDataSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeleteResourceDataSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterManagedInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeregisterManagedInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterPatchBaselineForPatchGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeregisterPatchBaselineForPatchGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTargetFromMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeregisterTargetFromMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeregisterTaskFromMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DeregisterTaskFromMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeActivations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeActivations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAutomationExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeAutomationExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeAvailablePatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeAvailablePatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeDocumentPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeDocumentPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEffectiveInstanceAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeEffectiveInstanceAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeEffectivePatchesForPatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeEffectivePatchesForPatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceAssociationsStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstanceAssociationsStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstanceInformation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstanceInformation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstancePatches {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstancePatches', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstancePatchStates {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstancePatchStates', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeInstancePatchStatesForPatchGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeInstancePatchStatesForPatchGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindowExecutions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindowExecutions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindowExecutionTaskInvocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindowExecutionTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindowExecutionTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindows {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindows', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindowTargets {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindowTargets', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeMaintenanceWindowTasks {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeMaintenanceWindowTasks', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribeParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribeParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePatchBaselines {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribePatchBaselines', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePatchGroups {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribePatchGroups', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DescribePatchGroupState {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::DescribePatchGroupState', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAutomationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetAutomationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetCommandInvocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetCommandInvocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDefaultPatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetDefaultPatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDeployablePatchSnapshotForInstance {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetDeployablePatchSnapshotForInstance', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInventory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetInventory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetInventorySchema {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetInventorySchema', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMaintenanceWindowExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetMaintenanceWindowExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMaintenanceWindowExecutionTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetMaintenanceWindowExecutionTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMaintenanceWindowExecutionTaskInvocation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetMaintenanceWindowExecutionTaskInvocation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetMaintenanceWindowTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetMaintenanceWindowTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParameterHistory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetParameterHistory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParameters {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetParameters', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetParametersByPath {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetParametersByPath', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetPatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPatchBaselineForPatchGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::GetPatchBaselineForPatchGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListAssociations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAssociationVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListAssociationVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCommandInvocations {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListCommandInvocations', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListCommands {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListCommands', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComplianceItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListComplianceItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListComplianceSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListComplianceSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocuments {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListDocuments', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListDocumentVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListDocumentVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListInventoryEntries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListInventoryEntries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceComplianceSummaries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListResourceComplianceSummaries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListResourceDataSync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListResourceDataSync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTagsForResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ListTagsForResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ModifyDocumentPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::ModifyDocumentPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutComplianceItems {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::PutComplianceItems', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutInventory {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::PutInventory', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutParameter {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::PutParameter', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterDefaultPatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RegisterDefaultPatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterPatchBaselineForPatchGroup {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RegisterPatchBaselineForPatchGroup', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTargetWithMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RegisterTargetWithMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegisterTaskWithMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RegisterTaskWithMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveTagsFromResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::RemoveTagsFromResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendAutomationSignal {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::SendAutomationSignal', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SendCommand {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::SendCommand', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StartAutomationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::StartAutomationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub StopAutomationExecution {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::StopAutomationExecution', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssociation {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateAssociation', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAssociationStatus {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateAssociationStatus', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocument {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateDocument', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateDocumentDefaultVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateDocumentDefaultVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMaintenanceWindow {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateMaintenanceWindow', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMaintenanceWindowTarget {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateMaintenanceWindowTarget', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateMaintenanceWindowTask {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateMaintenanceWindowTask', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateManagedInstanceRole {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdateManagedInstanceRole', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePatchBaseline {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::SSM::UpdatePatchBaseline', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub DescribeAllActivations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeActivations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeActivations(@_, NextToken => $next_result->NextToken);
        push @{ $result->ActivationList }, @{ $next_result->ActivationList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'ActivationList') foreach (@{ $result->ActivationList });
        $result = $self->DescribeActivations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'ActivationList') foreach (@{ $result->ActivationList });
    }

    return undef
  }
  sub DescribeAllInstanceInformation {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeInstanceInformation(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeInstanceInformation(@_, NextToken => $next_result->NextToken);
        push @{ $result->InstanceInformationList }, @{ $next_result->InstanceInformationList };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'InstanceInformationList') foreach (@{ $result->InstanceInformationList });
        $result = $self->DescribeInstanceInformation(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'InstanceInformationList') foreach (@{ $result->InstanceInformationList });
    }

    return undef
  }
  sub DescribeAllParameters {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->DescribeParameters(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->DescribeParameters(@_, NextToken => $next_result->NextToken);
        push @{ $result->Parameters }, @{ $next_result->Parameters };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
        $result = $self->DescribeParameters(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Parameters') foreach (@{ $result->Parameters });
    }

    return undef
  }
  sub ListAllAssociations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAssociations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAssociations(@_, NextToken => $next_result->NextToken);
        push @{ $result->Associations }, @{ $next_result->Associations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Associations') foreach (@{ $result->Associations });
        $result = $self->ListAssociations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Associations') foreach (@{ $result->Associations });
    }

    return undef
  }
  sub ListAllCommandInvocations {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCommandInvocations(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCommandInvocations(@_, NextToken => $next_result->NextToken);
        push @{ $result->CommandInvocations }, @{ $next_result->CommandInvocations };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'CommandInvocations') foreach (@{ $result->CommandInvocations });
        $result = $self->ListCommandInvocations(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'CommandInvocations') foreach (@{ $result->CommandInvocations });
    }

    return undef
  }
  sub ListAllCommands {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListCommands(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListCommands(@_, NextToken => $next_result->NextToken);
        push @{ $result->Commands }, @{ $next_result->Commands };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Commands') foreach (@{ $result->Commands });
        $result = $self->ListCommands(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Commands') foreach (@{ $result->Commands });
    }

    return undef
  }
  sub ListAllDocuments {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListDocuments(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListDocuments(@_, NextToken => $next_result->NextToken);
        push @{ $result->DocumentIdentifiers }, @{ $next_result->DocumentIdentifiers };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'DocumentIdentifiers') foreach (@{ $result->DocumentIdentifiers });
        $result = $self->ListDocuments(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'DocumentIdentifiers') foreach (@{ $result->DocumentIdentifiers });
    }

    return undef
  }


  sub operations { qw/AddTagsToResource CancelCommand CreateActivation CreateAssociation CreateAssociationBatch CreateDocument CreateMaintenanceWindow CreatePatchBaseline CreateResourceDataSync DeleteActivation DeleteAssociation DeleteDocument DeleteMaintenanceWindow DeleteParameter DeleteParameters DeletePatchBaseline DeleteResourceDataSync DeregisterManagedInstance DeregisterPatchBaselineForPatchGroup DeregisterTargetFromMaintenanceWindow DeregisterTaskFromMaintenanceWindow DescribeActivations DescribeAssociation DescribeAutomationExecutions DescribeAvailablePatches DescribeDocument DescribeDocumentPermission DescribeEffectiveInstanceAssociations DescribeEffectivePatchesForPatchBaseline DescribeInstanceAssociationsStatus DescribeInstanceInformation DescribeInstancePatches DescribeInstancePatchStates DescribeInstancePatchStatesForPatchGroup DescribeMaintenanceWindowExecutions DescribeMaintenanceWindowExecutionTaskInvocations DescribeMaintenanceWindowExecutionTasks DescribeMaintenanceWindows DescribeMaintenanceWindowTargets DescribeMaintenanceWindowTasks DescribeParameters DescribePatchBaselines DescribePatchGroups DescribePatchGroupState GetAutomationExecution GetCommandInvocation GetDefaultPatchBaseline GetDeployablePatchSnapshotForInstance GetDocument GetInventory GetInventorySchema GetMaintenanceWindow GetMaintenanceWindowExecution GetMaintenanceWindowExecutionTask GetMaintenanceWindowExecutionTaskInvocation GetMaintenanceWindowTask GetParameter GetParameterHistory GetParameters GetParametersByPath GetPatchBaseline GetPatchBaselineForPatchGroup ListAssociations ListAssociationVersions ListCommandInvocations ListCommands ListComplianceItems ListComplianceSummaries ListDocuments ListDocumentVersions ListInventoryEntries ListResourceComplianceSummaries ListResourceDataSync ListTagsForResource ModifyDocumentPermission PutComplianceItems PutInventory PutParameter RegisterDefaultPatchBaseline RegisterPatchBaselineForPatchGroup RegisterTargetWithMaintenanceWindow RegisterTaskWithMaintenanceWindow RemoveTagsFromResource SendAutomationSignal SendCommand StartAutomationExecution StopAutomationExecution UpdateAssociation UpdateAssociationStatus UpdateDocument UpdateDocumentDefaultVersion UpdateMaintenanceWindow UpdateMaintenanceWindowTarget UpdateMaintenanceWindowTask UpdateManagedInstanceRole UpdatePatchBaseline / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM - Perl Interface to AWS Amazon Simple Systems Manager (SSM)

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('SSM');
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

Amazon EC2 Systems Manager

Amazon EC2 Systems Manager is a collection of capabilities that helps
you automate management tasks such as collecting system inventory,
applying operating system (OS) patches, automating the creation of
Amazon Machine Images (AMIs), and configuring operating systems (OSs)
and applications at scale. Systems Manager lets you remotely and
securely manage the configuration of your managed instances. A
I<managed instance> is any Amazon EC2 instance or on-premises machine
in your hybrid environment that has been configured for Systems
Manager.

This reference is intended to be used with the Amazon EC2 Systems
Manager User Guide.

To get started, verify prerequisites and configure managed instances.
For more information, see Systems Manager Prerequisites.

For information about other API actions you can perform on Amazon EC2
instances, see the Amazon EC2 API Reference. For information about how
to use a Query API, see Making API Requests.

=head1 METHODS

=head2 AddTagsToResource(ResourceId => Str, ResourceType => Str, Tags => ArrayRef[L<Paws::SSM::Tag>])

Each argument is described in detail in: L<Paws::SSM::AddTagsToResource>

Returns: a L<Paws::SSM::AddTagsToResourceResult> instance

  Adds or overwrites one or more tags for the specified resource. Tags
are metadata that you can assign to your documents, managed instances,
Maintenance Windows, Parameter Store parameters, and patch baselines.
Tags enable you to categorize your resources in different ways, for
example, by purpose, owner, or environment. Each tag consists of a key
and an optional value, both of which you define. For example, you could
define a set of tags for your account's managed instances that helps
you track each instance's owner and stack level. For example: Key=Owner
and Value=DbAdmin, SysAdmin, or Dev. Or Key=Stack and Value=Production,
Pre-Production, or Test.

Each resource can have a maximum of 10 tags.

We recommend that you devise a set of tag keys that meets your needs
for each resource type. Using a consistent set of tag keys makes it
easier for you to manage your resources. You can search and filter the
resources based on the tags you add. Tags don't have any semantic
meaning to Amazon EC2 and are interpreted strictly as a string of
characters.

For more information about tags, see Tagging Your Amazon EC2 Resources
in the I<Amazon EC2 User Guide>.


=head2 CancelCommand(CommandId => Str, [InstanceIds => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SSM::CancelCommand>

Returns: a L<Paws::SSM::CancelCommandResult> instance

  Attempts to cancel the command specified by the Command ID. There is no
guarantee that the command will be terminated and the underlying
process stopped.


=head2 CreateActivation(IamRole => Str, [DefaultInstanceName => Str, Description => Str, ExpirationDate => Str, RegistrationLimit => Int])

Each argument is described in detail in: L<Paws::SSM::CreateActivation>

Returns: a L<Paws::SSM::CreateActivationResult> instance

  Registers your on-premises server or virtual machine with Amazon EC2 so
that you can manage these resources using Run Command. An on-premises
server or virtual machine that has been registered with EC2 is called a
managed instance. For more information about activations, see Setting
Up Systems Manager in Hybrid Environments.


=head2 CreateAssociation(Name => Str, [AssociationName => Str, DocumentVersion => Str, InstanceId => Str, OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>, Parameters => L<Paws::SSM::Parameters>, ScheduleExpression => Str, Targets => ArrayRef[L<Paws::SSM::Target>]])

Each argument is described in detail in: L<Paws::SSM::CreateAssociation>

Returns: a L<Paws::SSM::CreateAssociationResult> instance

  Associates the specified Systems Manager document with the specified
instances or targets.

When you associate a document with one or more instances using instance
IDs or tags, the SSM Agent running on the instance processes the
document and configures the instance as specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateAssociationBatch(Entries => ArrayRef[L<Paws::SSM::CreateAssociationBatchRequestEntry>])

Each argument is described in detail in: L<Paws::SSM::CreateAssociationBatch>

Returns: a L<Paws::SSM::CreateAssociationBatchResult> instance

  Associates the specified Systems Manager document with the specified
instances or targets.

When you associate a document with one or more instances using instance
IDs or tags, the SSM Agent running on the instance processes the
document and configures the instance as specified.

If you associate a document with an instance that already has an
associated document, the system throws the AssociationAlreadyExists
exception.


=head2 CreateDocument(Content => Str, Name => Str, [DocumentType => Str])

Each argument is described in detail in: L<Paws::SSM::CreateDocument>

Returns: a L<Paws::SSM::CreateDocumentResult> instance

  Creates a Systems Manager document.

After you create a document, you can use CreateAssociation to associate
it with one or more running instances.


=head2 CreateMaintenanceWindow(AllowUnassociatedTargets => Bool, Cutoff => Int, Duration => Int, Name => Str, Schedule => Str, [ClientToken => Str, Description => Str])

Each argument is described in detail in: L<Paws::SSM::CreateMaintenanceWindow>

Returns: a L<Paws::SSM::CreateMaintenanceWindowResult> instance

  Creates a new Maintenance Window.


=head2 CreatePatchBaseline(Name => Str, [ApprovalRules => L<Paws::SSM::PatchRuleGroup>, ApprovedPatches => ArrayRef[Str|Undef], ApprovedPatchesComplianceLevel => Str, ClientToken => Str, Description => Str, GlobalFilters => L<Paws::SSM::PatchFilterGroup>, OperatingSystem => Str, RejectedPatches => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SSM::CreatePatchBaseline>

Returns: a L<Paws::SSM::CreatePatchBaselineResult> instance

  Creates a patch baseline.


=head2 CreateResourceDataSync(S3Destination => L<Paws::SSM::ResourceDataSyncS3Destination>, SyncName => Str)

Each argument is described in detail in: L<Paws::SSM::CreateResourceDataSync>

Returns: a L<Paws::SSM::CreateResourceDataSyncResult> instance

  Creates a resource data sync configuration to a single bucket in Amazon
S3. This is an asynchronous operation that returns immediately. After a
successful initial sync is completed, the system continuously syncs
data to the Amazon S3 bucket. To check the status of the sync, use the
ListResourceDataSync operation.

By default, data is not encrypted in Amazon S3. We strongly recommend
that you enable encryption in Amazon S3 to ensure secure data storage.
We also recommend that you secure access to the Amazon S3 bucket by
creating a restrictive bucket policy. To view an example of a
restrictive Amazon S3 bucket policy for Resource Data Sync, see
Configuring Resource Data Sync for Inventory.


=head2 DeleteActivation(ActivationId => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteActivation>

Returns: a L<Paws::SSM::DeleteActivationResult> instance

  Deletes an activation. You are not required to delete an activation. If
you delete an activation, you can no longer use it to register
additional managed instances. Deleting an activation does not
de-register managed instances. You must manually de-register managed
instances.


=head2 DeleteAssociation([AssociationId => Str, InstanceId => Str, Name => Str])

Each argument is described in detail in: L<Paws::SSM::DeleteAssociation>

Returns: a L<Paws::SSM::DeleteAssociationResult> instance

  Disassociates the specified Systems Manager document from the specified
instance.

When you disassociate a document from an instance, it does not change
the configuration of the instance. To change the configuration state of
an instance after you disassociate a document, you must create a new
document with the desired configuration and associate it with the
instance.


=head2 DeleteDocument(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteDocument>

Returns: a L<Paws::SSM::DeleteDocumentResult> instance

  Deletes the Systems Manager document and all instance associations to
the document.

Before you delete the document, we recommend that you use
DeleteAssociation to disassociate all instances that are associated
with the document.


=head2 DeleteMaintenanceWindow(WindowId => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteMaintenanceWindow>

Returns: a L<Paws::SSM::DeleteMaintenanceWindowResult> instance

  Deletes a Maintenance Window.


=head2 DeleteParameter(Name => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteParameter>

Returns: a L<Paws::SSM::DeleteParameterResult> instance

  Delete a parameter from the system.


=head2 DeleteParameters(Names => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SSM::DeleteParameters>

Returns: a L<Paws::SSM::DeleteParametersResult> instance

  Delete a list of parameters. This API is used to delete parameters by
using the Amazon EC2 console.


=head2 DeletePatchBaseline(BaselineId => Str)

Each argument is described in detail in: L<Paws::SSM::DeletePatchBaseline>

Returns: a L<Paws::SSM::DeletePatchBaselineResult> instance

  Deletes a patch baseline.


=head2 DeleteResourceDataSync(SyncName => Str)

Each argument is described in detail in: L<Paws::SSM::DeleteResourceDataSync>

Returns: a L<Paws::SSM::DeleteResourceDataSyncResult> instance

  Deletes a Resource Data Sync configuration. After the configuration is
deleted, changes to inventory data on managed instances are no longer
synced with the target Amazon S3 bucket. Deleting a sync configuration
does not delete data in the target Amazon S3 bucket.


=head2 DeregisterManagedInstance(InstanceId => Str)

Each argument is described in detail in: L<Paws::SSM::DeregisterManagedInstance>

Returns: a L<Paws::SSM::DeregisterManagedInstanceResult> instance

  Removes the server or virtual machine from the list of registered
servers. You can reregister the instance again at any time. If you
don't plan to use Run Command on the server, we suggest uninstalling
the SSM Agent first.


=head2 DeregisterPatchBaselineForPatchGroup(BaselineId => Str, PatchGroup => Str)

Each argument is described in detail in: L<Paws::SSM::DeregisterPatchBaselineForPatchGroup>

Returns: a L<Paws::SSM::DeregisterPatchBaselineForPatchGroupResult> instance

  Removes a patch group from a patch baseline.


=head2 DeregisterTargetFromMaintenanceWindow(WindowId => Str, WindowTargetId => Str, [Safe => Bool])

Each argument is described in detail in: L<Paws::SSM::DeregisterTargetFromMaintenanceWindow>

Returns: a L<Paws::SSM::DeregisterTargetFromMaintenanceWindowResult> instance

  Removes a target from a Maintenance Window.


=head2 DeregisterTaskFromMaintenanceWindow(WindowId => Str, WindowTaskId => Str)

Each argument is described in detail in: L<Paws::SSM::DeregisterTaskFromMaintenanceWindow>

Returns: a L<Paws::SSM::DeregisterTaskFromMaintenanceWindowResult> instance

  Removes a task from a Maintenance Window.


=head2 DescribeActivations([Filters => ArrayRef[L<Paws::SSM::DescribeActivationsFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeActivations>

Returns: a L<Paws::SSM::DescribeActivationsResult> instance

  Details about the activation, including: the date and time the
activation was created, the expiration date, the IAM role assigned to
the instances in the activation, and the number of instances activated
by this registration.


=head2 DescribeAssociation([AssociationId => Str, AssociationVersion => Str, InstanceId => Str, Name => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeAssociation>

Returns: a L<Paws::SSM::DescribeAssociationResult> instance

  Describes the associations for the specified Systems Manager document
or instance.


=head2 DescribeAutomationExecutions([Filters => ArrayRef[L<Paws::SSM::AutomationExecutionFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeAutomationExecutions>

Returns: a L<Paws::SSM::DescribeAutomationExecutionsResult> instance

  Provides details about all active and terminated Automation executions.


=head2 DescribeAvailablePatches([Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeAvailablePatches>

Returns: a L<Paws::SSM::DescribeAvailablePatchesResult> instance

  Lists all patches that could possibly be included in a patch baseline.


=head2 DescribeDocument(Name => Str, [DocumentVersion => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeDocument>

Returns: a L<Paws::SSM::DescribeDocumentResult> instance

  Describes the specified Systems Manager document.


=head2 DescribeDocumentPermission(Name => Str, PermissionType => Str)

Each argument is described in detail in: L<Paws::SSM::DescribeDocumentPermission>

Returns: a L<Paws::SSM::DescribeDocumentPermissionResponse> instance

  Describes the permissions for a Systems Manager document. If you
created the document, you are the owner. If a document is shared, it
can either be shared privately (by specifying a user's AWS account ID)
or publicly (I<All>).


=head2 DescribeEffectiveInstanceAssociations(InstanceId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeEffectiveInstanceAssociations>

Returns: a L<Paws::SSM::DescribeEffectiveInstanceAssociationsResult> instance

  All associations for the instance(s).


=head2 DescribeEffectivePatchesForPatchBaseline(BaselineId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeEffectivePatchesForPatchBaseline>

Returns: a L<Paws::SSM::DescribeEffectivePatchesForPatchBaselineResult> instance

  Retrieves the current effective patches (the patch and the approval
state) for the specified patch baseline. Note that this API applies
only to Windows patch baselines.


=head2 DescribeInstanceAssociationsStatus(InstanceId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstanceAssociationsStatus>

Returns: a L<Paws::SSM::DescribeInstanceAssociationsStatusResult> instance

  The status of the associations for the instance(s).


=head2 DescribeInstanceInformation([Filters => ArrayRef[L<Paws::SSM::InstanceInformationStringFilter>], InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstanceInformation>

Returns: a L<Paws::SSM::DescribeInstanceInformationResult> instance

  Describes one or more of your instances. You can use this to get
information about instances like the operating system platform, the SSM
Agent version (Linux), status etc. If you specify one or more instance
IDs, it returns information for those instances. If you do not specify
instance IDs, it returns information for all your instances. If you
specify an instance ID that is not valid or an instance that you do not
own, you receive an error.


=head2 DescribeInstancePatches(InstanceId => Str, [Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstancePatches>

Returns: a L<Paws::SSM::DescribeInstancePatchesResult> instance

  Retrieves information about the patches on the specified instance and
their state relative to the patch baseline being used for the instance.


=head2 DescribeInstancePatchStates(InstanceIds => ArrayRef[Str|Undef], [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstancePatchStates>

Returns: a L<Paws::SSM::DescribeInstancePatchStatesResult> instance

  Retrieves the high-level patch state of one or more instances.


=head2 DescribeInstancePatchStatesForPatchGroup(PatchGroup => Str, [Filters => ArrayRef[L<Paws::SSM::InstancePatchStateFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeInstancePatchStatesForPatchGroup>

Returns: a L<Paws::SSM::DescribeInstancePatchStatesForPatchGroupResult> instance

  Retrieves the high-level patch state for the instances in the specified
patch group.


=head2 DescribeMaintenanceWindowExecutions(WindowId => Str, [Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindowExecutions>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowExecutionsResult> instance

  Lists the executions of a Maintenance Window. This includes information
about when the Maintenance Window was scheduled to be active, and
information about tasks registered and run with the Maintenance Window.


=head2 DescribeMaintenanceWindowExecutionTaskInvocations(TaskId => Str, WindowExecutionId => Str, [Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocations>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowExecutionTaskInvocationsResult> instance

  Retrieves the individual task executions (one per target) for a
particular task executed as part of a Maintenance Window execution.


=head2 DescribeMaintenanceWindowExecutionTasks(WindowExecutionId => Str, [Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindowExecutionTasks>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowExecutionTasksResult> instance

  For a given Maintenance Window execution, lists the tasks that were
executed.


=head2 DescribeMaintenanceWindows([Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindows>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowsResult> instance

  Retrieves the Maintenance Windows in an AWS account.


=head2 DescribeMaintenanceWindowTargets(WindowId => Str, [Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindowTargets>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowTargetsResult> instance

  Lists the targets registered with the Maintenance Window.


=head2 DescribeMaintenanceWindowTasks(WindowId => Str, [Filters => ArrayRef[L<Paws::SSM::MaintenanceWindowFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribeMaintenanceWindowTasks>

Returns: a L<Paws::SSM::DescribeMaintenanceWindowTasksResult> instance

  Lists the tasks in a Maintenance Window.


=head2 DescribeParameters([Filters => ArrayRef[L<Paws::SSM::ParametersFilter>], MaxResults => Int, NextToken => Str, ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]])

Each argument is described in detail in: L<Paws::SSM::DescribeParameters>

Returns: a L<Paws::SSM::DescribeParametersResult> instance

  Get information about a parameter.

Request results are returned on a best-effort basis. If you specify
C<MaxResults> in the request, the response includes information up to
the limit specified. The number of items returned, however, can be
between zero and the value of C<MaxResults>. If the service reaches an
internal limit while processing the results, it stops the operation and
returns the matching values up to that point and a C<NextToken>. You
can specify the C<NextToken> in a subsequent call to get the next set
of results.


=head2 DescribePatchBaselines([Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribePatchBaselines>

Returns: a L<Paws::SSM::DescribePatchBaselinesResult> instance

  Lists the patch baselines in your AWS account.


=head2 DescribePatchGroups([Filters => ArrayRef[L<Paws::SSM::PatchOrchestratorFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::DescribePatchGroups>

Returns: a L<Paws::SSM::DescribePatchGroupsResult> instance

  Lists all patch groups that have been registered with patch baselines.


=head2 DescribePatchGroupState(PatchGroup => Str)

Each argument is described in detail in: L<Paws::SSM::DescribePatchGroupState>

Returns: a L<Paws::SSM::DescribePatchGroupStateResult> instance

  Returns high-level aggregated patch compliance state for a patch group.


=head2 GetAutomationExecution(AutomationExecutionId => Str)

Each argument is described in detail in: L<Paws::SSM::GetAutomationExecution>

Returns: a L<Paws::SSM::GetAutomationExecutionResult> instance

  Get detailed information about a particular Automation execution.


=head2 GetCommandInvocation(CommandId => Str, InstanceId => Str, [PluginName => Str])

Each argument is described in detail in: L<Paws::SSM::GetCommandInvocation>

Returns: a L<Paws::SSM::GetCommandInvocationResult> instance

  Returns detailed information about command execution for an invocation
or plugin.


=head2 GetDefaultPatchBaseline([OperatingSystem => Str])

Each argument is described in detail in: L<Paws::SSM::GetDefaultPatchBaseline>

Returns: a L<Paws::SSM::GetDefaultPatchBaselineResult> instance

  Retrieves the default patch baseline. Note that Systems Manager
supports creating multiple default patch baselines. For example, you
can create a default patch baseline for each operating system.


=head2 GetDeployablePatchSnapshotForInstance(InstanceId => Str, SnapshotId => Str)

Each argument is described in detail in: L<Paws::SSM::GetDeployablePatchSnapshotForInstance>

Returns: a L<Paws::SSM::GetDeployablePatchSnapshotForInstanceResult> instance

  Retrieves the current snapshot for the patch baseline the instance
uses. This API is primarily used by the AWS-RunPatchBaseline Systems
Manager document.


=head2 GetDocument(Name => Str, [DocumentVersion => Str])

Each argument is described in detail in: L<Paws::SSM::GetDocument>

Returns: a L<Paws::SSM::GetDocumentResult> instance

  Gets the contents of the specified Systems Manager document.


=head2 GetInventory([Filters => ArrayRef[L<Paws::SSM::InventoryFilter>], MaxResults => Int, NextToken => Str, ResultAttributes => ArrayRef[L<Paws::SSM::ResultAttribute>]])

Each argument is described in detail in: L<Paws::SSM::GetInventory>

Returns: a L<Paws::SSM::GetInventoryResult> instance

  Query inventory information.


=head2 GetInventorySchema([MaxResults => Int, NextToken => Str, SubType => Bool, TypeName => Str])

Each argument is described in detail in: L<Paws::SSM::GetInventorySchema>

Returns: a L<Paws::SSM::GetInventorySchemaResult> instance

  Return a list of inventory type names for the account, or return a list
of attribute names for a specific Inventory item type.


=head2 GetMaintenanceWindow(WindowId => Str)

Each argument is described in detail in: L<Paws::SSM::GetMaintenanceWindow>

Returns: a L<Paws::SSM::GetMaintenanceWindowResult> instance

  Retrieves a Maintenance Window.


=head2 GetMaintenanceWindowExecution(WindowExecutionId => Str)

Each argument is described in detail in: L<Paws::SSM::GetMaintenanceWindowExecution>

Returns: a L<Paws::SSM::GetMaintenanceWindowExecutionResult> instance

  Retrieves details about a specific task executed as part of a
Maintenance Window execution.


=head2 GetMaintenanceWindowExecutionTask(TaskId => Str, WindowExecutionId => Str)

Each argument is described in detail in: L<Paws::SSM::GetMaintenanceWindowExecutionTask>

Returns: a L<Paws::SSM::GetMaintenanceWindowExecutionTaskResult> instance

  Retrieves the details about a specific task executed as part of a
Maintenance Window execution.


=head2 GetMaintenanceWindowExecutionTaskInvocation(InvocationId => Str, TaskId => Str, WindowExecutionId => Str)

Each argument is described in detail in: L<Paws::SSM::GetMaintenanceWindowExecutionTaskInvocation>

Returns: a L<Paws::SSM::GetMaintenanceWindowExecutionTaskInvocationResult> instance

  Retrieves a task invocation. A task invocation is a specific task
executing on a specific target. Maintenance Windows report status for
all invocations.


=head2 GetMaintenanceWindowTask(WindowId => Str, WindowTaskId => Str)

Each argument is described in detail in: L<Paws::SSM::GetMaintenanceWindowTask>

Returns: a L<Paws::SSM::GetMaintenanceWindowTaskResult> instance

  Lists the tasks in a Maintenance Window.


=head2 GetParameter(Name => Str, [WithDecryption => Bool])

Each argument is described in detail in: L<Paws::SSM::GetParameter>

Returns: a L<Paws::SSM::GetParameterResult> instance

  Get information about a parameter by using the parameter name.


=head2 GetParameterHistory(Name => Str, [MaxResults => Int, NextToken => Str, WithDecryption => Bool])

Each argument is described in detail in: L<Paws::SSM::GetParameterHistory>

Returns: a L<Paws::SSM::GetParameterHistoryResult> instance

  Query a list of all parameters used by the AWS account.


=head2 GetParameters(Names => ArrayRef[Str|Undef], [WithDecryption => Bool])

Each argument is described in detail in: L<Paws::SSM::GetParameters>

Returns: a L<Paws::SSM::GetParametersResult> instance

  Get details of a parameter.


=head2 GetParametersByPath(Path => Str, [MaxResults => Int, NextToken => Str, ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>], Recursive => Bool, WithDecryption => Bool])

Each argument is described in detail in: L<Paws::SSM::GetParametersByPath>

Returns: a L<Paws::SSM::GetParametersByPathResult> instance

  Retrieve parameters in a specific hierarchy. For more information, see
Working with Systems Manager Parameters.

Request results are returned on a best-effort basis. If you specify
C<MaxResults> in the request, the response includes information up to
the limit specified. The number of items returned, however, can be
between zero and the value of C<MaxResults>. If the service reaches an
internal limit while processing the results, it stops the operation and
returns the matching values up to that point and a C<NextToken>. You
can specify the C<NextToken> in a subsequent call to get the next set
of results.


=head2 GetPatchBaseline(BaselineId => Str)

Each argument is described in detail in: L<Paws::SSM::GetPatchBaseline>

Returns: a L<Paws::SSM::GetPatchBaselineResult> instance

  Retrieves information about a patch baseline.


=head2 GetPatchBaselineForPatchGroup(PatchGroup => Str, [OperatingSystem => Str])

Each argument is described in detail in: L<Paws::SSM::GetPatchBaselineForPatchGroup>

Returns: a L<Paws::SSM::GetPatchBaselineForPatchGroupResult> instance

  Retrieves the patch baseline that should be used for the specified
patch group.


=head2 ListAssociations([AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListAssociations>

Returns: a L<Paws::SSM::ListAssociationsResult> instance

  Lists the associations for the specified Systems Manager document or
instance.


=head2 ListAssociationVersions(AssociationId => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListAssociationVersions>

Returns: a L<Paws::SSM::ListAssociationVersionsResult> instance

  Retrieves all versions of an association for a specific association ID.


=head2 ListCommandInvocations([CommandId => Str, Details => Bool, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommandInvocations>

Returns: a L<Paws::SSM::ListCommandInvocationsResult> instance

  An invocation is copy of a command sent to a specific instance. A
command can apply to one or more instances. A command invocation
applies to one instance. For example, if a user executes SendCommand
against three instances, then a command invocation is created for each
requested instance ID. ListCommandInvocations provide status about
command execution.


=head2 ListCommands([CommandId => Str, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListCommands>

Returns: a L<Paws::SSM::ListCommandsResult> instance

  Lists the commands requested by users of the AWS account.


=head2 ListComplianceItems([Filters => ArrayRef[L<Paws::SSM::ComplianceStringFilter>], MaxResults => Int, NextToken => Str, ResourceIds => ArrayRef[Str|Undef], ResourceTypes => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SSM::ListComplianceItems>

Returns: a L<Paws::SSM::ListComplianceItemsResult> instance

  For a specified resource ID, this API action returns a list of
compliance statuses for different resource types. Currently, you can
only specify one resource ID per call. List results depend on the
criteria specified in the filter.


=head2 ListComplianceSummaries([Filters => ArrayRef[L<Paws::SSM::ComplianceStringFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListComplianceSummaries>

Returns: a L<Paws::SSM::ListComplianceSummariesResult> instance

  Returns a summary count of compliant and non-compliant resources for a
compliance type. For example, this call can return State Manager
associations, patches, or custom compliance types according to the
filter criteria that you specify.


=head2 ListDocuments([DocumentFilterList => ArrayRef[L<Paws::SSM::DocumentFilter>], Filters => ArrayRef[L<Paws::SSM::DocumentKeyValuesFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListDocuments>

Returns: a L<Paws::SSM::ListDocumentsResult> instance

  Describes one or more of your Systems Manager documents.


=head2 ListDocumentVersions(Name => Str, [MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListDocumentVersions>

Returns: a L<Paws::SSM::ListDocumentVersionsResult> instance

  List all versions for a document.


=head2 ListInventoryEntries(InstanceId => Str, TypeName => Str, [Filters => ArrayRef[L<Paws::SSM::InventoryFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListInventoryEntries>

Returns: a L<Paws::SSM::ListInventoryEntriesResult> instance

  A list of inventory items returned by the request.


=head2 ListResourceComplianceSummaries([Filters => ArrayRef[L<Paws::SSM::ComplianceStringFilter>], MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListResourceComplianceSummaries>

Returns: a L<Paws::SSM::ListResourceComplianceSummariesResult> instance

  Returns a resource-level summary count. The summary includes
information about compliant and non-compliant statuses and detailed
compliance-item severity counts, according to the filter criteria you
specify.


=head2 ListResourceDataSync([MaxResults => Int, NextToken => Str])

Each argument is described in detail in: L<Paws::SSM::ListResourceDataSync>

Returns: a L<Paws::SSM::ListResourceDataSyncResult> instance

  Lists your resource data sync configurations. Includes information
about the last time a sync attempted to start, the last sync status,
and the last time a sync successfully completed.

The number of sync configurations might be too large to return using a
single call to C<ListResourceDataSync>. You can limit the number of
sync configurations returned by using the C<MaxResults> parameter. To
determine whether there are more sync configurations to list, check the
value of C<NextToken> in the output. If there are more sync
configurations to list, you can request them by specifying the
C<NextToken> returned in the call to the parameter of a subsequent
call.


=head2 ListTagsForResource(ResourceId => Str, ResourceType => Str)

Each argument is described in detail in: L<Paws::SSM::ListTagsForResource>

Returns: a L<Paws::SSM::ListTagsForResourceResult> instance

  Returns a list of the tags assigned to the specified resource.


=head2 ModifyDocumentPermission(Name => Str, PermissionType => Str, [AccountIdsToAdd => ArrayRef[Str|Undef], AccountIdsToRemove => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SSM::ModifyDocumentPermission>

Returns: a L<Paws::SSM::ModifyDocumentPermissionResponse> instance

  Shares a Systems Manager document publicly or privately. If you share a
document privately, you must specify the AWS user account IDs for those
people who can use the document. If you share a document publicly, you
must specify I<All> as the account ID.


=head2 PutComplianceItems(ComplianceType => Str, ExecutionSummary => L<Paws::SSM::ComplianceExecutionSummary>, Items => ArrayRef[L<Paws::SSM::ComplianceItemEntry>], ResourceId => Str, ResourceType => Str, [ItemContentHash => Str])

Each argument is described in detail in: L<Paws::SSM::PutComplianceItems>

Returns: a L<Paws::SSM::PutComplianceItemsResult> instance

  Registers a compliance type and other compliance details on a
designated resource. This action lets you register custom compliance
details with a resource. This call overwrites existing compliance
information on the resource, so you must provide a full list of
compliance items each time that you send the request.


=head2 PutInventory(InstanceId => Str, Items => ArrayRef[L<Paws::SSM::InventoryItem>])

Each argument is described in detail in: L<Paws::SSM::PutInventory>

Returns: a L<Paws::SSM::PutInventoryResult> instance

  Bulk update custom inventory items on one more instance. The request
adds an inventory item, if it doesn't already exist, or updates an
inventory item, if it does exist.


=head2 PutParameter(Name => Str, Type => Str, Value => Str, [AllowedPattern => Str, Description => Str, KeyId => Str, Overwrite => Bool])

Each argument is described in detail in: L<Paws::SSM::PutParameter>

Returns: a L<Paws::SSM::PutParameterResult> instance

  Add one or more parameters to the system.


=head2 RegisterDefaultPatchBaseline(BaselineId => Str)

Each argument is described in detail in: L<Paws::SSM::RegisterDefaultPatchBaseline>

Returns: a L<Paws::SSM::RegisterDefaultPatchBaselineResult> instance

  Defines the default patch baseline.


=head2 RegisterPatchBaselineForPatchGroup(BaselineId => Str, PatchGroup => Str)

Each argument is described in detail in: L<Paws::SSM::RegisterPatchBaselineForPatchGroup>

Returns: a L<Paws::SSM::RegisterPatchBaselineForPatchGroupResult> instance

  Registers a patch baseline for a patch group.


=head2 RegisterTargetWithMaintenanceWindow(ResourceType => Str, Targets => ArrayRef[L<Paws::SSM::Target>], WindowId => Str, [ClientToken => Str, Description => Str, Name => Str, OwnerInformation => Str])

Each argument is described in detail in: L<Paws::SSM::RegisterTargetWithMaintenanceWindow>

Returns: a L<Paws::SSM::RegisterTargetWithMaintenanceWindowResult> instance

  Registers a target with a Maintenance Window.


=head2 RegisterTaskWithMaintenanceWindow(MaxConcurrency => Str, MaxErrors => Str, ServiceRoleArn => Str, Targets => ArrayRef[L<Paws::SSM::Target>], TaskArn => Str, TaskType => Str, WindowId => Str, [ClientToken => Str, Description => Str, LoggingInfo => L<Paws::SSM::LoggingInfo>, Name => Str, Priority => Int, TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>, TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>])

Each argument is described in detail in: L<Paws::SSM::RegisterTaskWithMaintenanceWindow>

Returns: a L<Paws::SSM::RegisterTaskWithMaintenanceWindowResult> instance

  Adds a new task to a Maintenance Window.


=head2 RemoveTagsFromResource(ResourceId => Str, ResourceType => Str, TagKeys => ArrayRef[Str|Undef])

Each argument is described in detail in: L<Paws::SSM::RemoveTagsFromResource>

Returns: a L<Paws::SSM::RemoveTagsFromResourceResult> instance

  Removes all tags from the specified resource.


=head2 SendAutomationSignal(AutomationExecutionId => Str, SignalType => Str, [Payload => L<Paws::SSM::AutomationParameterMap>])

Each argument is described in detail in: L<Paws::SSM::SendAutomationSignal>

Returns: a L<Paws::SSM::SendAutomationSignalResult> instance

  Sends a signal to an Automation execution to change the current
behavior or status of the execution.


=head2 SendCommand(DocumentName => Str, [Comment => Str, DocumentHash => Str, DocumentHashType => Str, InstanceIds => ArrayRef[Str|Undef], MaxConcurrency => Str, MaxErrors => Str, NotificationConfig => L<Paws::SSM::NotificationConfig>, OutputS3BucketName => Str, OutputS3KeyPrefix => Str, OutputS3Region => Str, Parameters => L<Paws::SSM::Parameters>, ServiceRoleArn => Str, Targets => ArrayRef[L<Paws::SSM::Target>], TimeoutSeconds => Int])

Each argument is described in detail in: L<Paws::SSM::SendCommand>

Returns: a L<Paws::SSM::SendCommandResult> instance

  Executes commands on one or more managed instances.


=head2 StartAutomationExecution(DocumentName => Str, [ClientToken => Str, DocumentVersion => Str, Parameters => L<Paws::SSM::AutomationParameterMap>])

Each argument is described in detail in: L<Paws::SSM::StartAutomationExecution>

Returns: a L<Paws::SSM::StartAutomationExecutionResult> instance

  Initiates execution of an Automation document.


=head2 StopAutomationExecution(AutomationExecutionId => Str)

Each argument is described in detail in: L<Paws::SSM::StopAutomationExecution>

Returns: a L<Paws::SSM::StopAutomationExecutionResult> instance

  Stop an Automation that is currently executing.


=head2 UpdateAssociation(AssociationId => Str, [AssociationName => Str, AssociationVersion => Str, DocumentVersion => Str, Name => Str, OutputLocation => L<Paws::SSM::InstanceAssociationOutputLocation>, Parameters => L<Paws::SSM::Parameters>, ScheduleExpression => Str, Targets => ArrayRef[L<Paws::SSM::Target>]])

Each argument is described in detail in: L<Paws::SSM::UpdateAssociation>

Returns: a L<Paws::SSM::UpdateAssociationResult> instance

  Updates an association. You can update the association name and
version, the document version, schedule, parameters, and Amazon S3
output.


=head2 UpdateAssociationStatus(AssociationStatus => L<Paws::SSM::AssociationStatus>, InstanceId => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateAssociationStatus>

Returns: a L<Paws::SSM::UpdateAssociationStatusResult> instance

  Updates the status of the Systems Manager document associated with the
specified instance.


=head2 UpdateDocument(Content => Str, Name => Str, [DocumentVersion => Str])

Each argument is described in detail in: L<Paws::SSM::UpdateDocument>

Returns: a L<Paws::SSM::UpdateDocumentResult> instance

  The document you want to update.


=head2 UpdateDocumentDefaultVersion(DocumentVersion => Str, Name => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateDocumentDefaultVersion>

Returns: a L<Paws::SSM::UpdateDocumentDefaultVersionResult> instance

  Set the default version of a document.


=head2 UpdateMaintenanceWindow(WindowId => Str, [AllowUnassociatedTargets => Bool, Cutoff => Int, Description => Str, Duration => Int, Enabled => Bool, Name => Str, Replace => Bool, Schedule => Str])

Each argument is described in detail in: L<Paws::SSM::UpdateMaintenanceWindow>

Returns: a L<Paws::SSM::UpdateMaintenanceWindowResult> instance

  Updates an existing Maintenance Window. Only specified parameters are
modified.


=head2 UpdateMaintenanceWindowTarget(WindowId => Str, WindowTargetId => Str, [Description => Str, Name => Str, OwnerInformation => Str, Replace => Bool, Targets => ArrayRef[L<Paws::SSM::Target>]])

Each argument is described in detail in: L<Paws::SSM::UpdateMaintenanceWindowTarget>

Returns: a L<Paws::SSM::UpdateMaintenanceWindowTargetResult> instance

  Modifies the target of an existing Maintenance Window. You can't change
the target type, but you can change the following:

The target from being an ID target to a Tag target, or a Tag target to
an ID target.

IDs for an ID target.

Tags for a Tag target.

Owner.

Name.

Description.

If a parameter is null, then the corresponding field is not modified.


=head2 UpdateMaintenanceWindowTask(WindowId => Str, WindowTaskId => Str, [Description => Str, LoggingInfo => L<Paws::SSM::LoggingInfo>, MaxConcurrency => Str, MaxErrors => Str, Name => Str, Priority => Int, Replace => Bool, ServiceRoleArn => Str, Targets => ArrayRef[L<Paws::SSM::Target>], TaskArn => Str, TaskInvocationParameters => L<Paws::SSM::MaintenanceWindowTaskInvocationParameters>, TaskParameters => L<Paws::SSM::MaintenanceWindowTaskParameters>])

Each argument is described in detail in: L<Paws::SSM::UpdateMaintenanceWindowTask>

Returns: a L<Paws::SSM::UpdateMaintenanceWindowTaskResult> instance

  Modifies a task assigned to a Maintenance Window. You can't change the
task type, but you can change the following values:

Task ARN. For example, you can change a RUN_COMMAND task from
AWS-RunPowerShellScript to AWS-RunShellScript.

Service role ARN.

Task parameters.

Task priority.

Task MaxConcurrency and MaxErrors.

Log location.

If a parameter is null, then the corresponding field is not modified.
Also, if you set Replace to true, then all fields required by the
RegisterTaskWithMaintenanceWindow action are required for this request.
Optional fields that aren't specified are set to null.


=head2 UpdateManagedInstanceRole(IamRole => Str, InstanceId => Str)

Each argument is described in detail in: L<Paws::SSM::UpdateManagedInstanceRole>

Returns: a L<Paws::SSM::UpdateManagedInstanceRoleResult> instance

  Assigns or changes an Amazon Identity and Access Management (IAM) role
to the managed instance.


=head2 UpdatePatchBaseline(BaselineId => Str, [ApprovalRules => L<Paws::SSM::PatchRuleGroup>, ApprovedPatches => ArrayRef[Str|Undef], ApprovedPatchesComplianceLevel => Str, Description => Str, GlobalFilters => L<Paws::SSM::PatchFilterGroup>, Name => Str, RejectedPatches => ArrayRef[Str|Undef]])

Each argument is described in detail in: L<Paws::SSM::UpdatePatchBaseline>

Returns: a L<Paws::SSM::UpdatePatchBaselineResult> instance

  Modifies an existing patch baseline. Fields not specified in the
request are left unchanged.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 DescribeAllActivations(sub { },[Filters => ArrayRef[L<Paws::SSM::DescribeActivationsFilter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllActivations([Filters => ArrayRef[L<Paws::SSM::DescribeActivationsFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - ActivationList, passing the object as the first parameter, and the string 'ActivationList' as the second parameter 

If not, it will return a a L<Paws::SSM::DescribeActivationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllInstanceInformation(sub { },[Filters => ArrayRef[L<Paws::SSM::InstanceInformationStringFilter>], InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>], MaxResults => Int, NextToken => Str])

=head2 DescribeAllInstanceInformation([Filters => ArrayRef[L<Paws::SSM::InstanceInformationStringFilter>], InstanceInformationFilterList => ArrayRef[L<Paws::SSM::InstanceInformationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - InstanceInformationList, passing the object as the first parameter, and the string 'InstanceInformationList' as the second parameter 

If not, it will return a a L<Paws::SSM::DescribeInstanceInformationResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 DescribeAllParameters(sub { },[Filters => ArrayRef[L<Paws::SSM::ParametersFilter>], MaxResults => Int, NextToken => Str, ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]])

=head2 DescribeAllParameters([Filters => ArrayRef[L<Paws::SSM::ParametersFilter>], MaxResults => Int, NextToken => Str, ParameterFilters => ArrayRef[L<Paws::SSM::ParameterStringFilter>]])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Parameters, passing the object as the first parameter, and the string 'Parameters' as the second parameter 

If not, it will return a a L<Paws::SSM::DescribeParametersResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllAssociations(sub { },[AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllAssociations([AssociationFilterList => ArrayRef[L<Paws::SSM::AssociationFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Associations, passing the object as the first parameter, and the string 'Associations' as the second parameter 

If not, it will return a a L<Paws::SSM::ListAssociationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCommandInvocations(sub { },[CommandId => Str, Details => Bool, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllCommandInvocations([CommandId => Str, Details => Bool, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - CommandInvocations, passing the object as the first parameter, and the string 'CommandInvocations' as the second parameter 

If not, it will return a a L<Paws::SSM::ListCommandInvocationsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllCommands(sub { },[CommandId => Str, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])

=head2 ListAllCommands([CommandId => Str, Filters => ArrayRef[L<Paws::SSM::CommandFilter>], InstanceId => Str, MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Commands, passing the object as the first parameter, and the string 'Commands' as the second parameter 

If not, it will return a a L<Paws::SSM::ListCommandsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllDocuments(sub { },[DocumentFilterList => ArrayRef[L<Paws::SSM::DocumentFilter>], Filters => ArrayRef[L<Paws::SSM::DocumentKeyValuesFilter>], MaxResults => Int, NextToken => Str])

=head2 ListAllDocuments([DocumentFilterList => ArrayRef[L<Paws::SSM::DocumentFilter>], Filters => ArrayRef[L<Paws::SSM::DocumentKeyValuesFilter>], MaxResults => Int, NextToken => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - DocumentIdentifiers, passing the object as the first parameter, and the string 'DocumentIdentifiers' as the second parameter 

If not, it will return a a L<Paws::SSM::ListDocumentsResult> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

