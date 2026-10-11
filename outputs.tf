output "actions_organization_workflow_permissions_id" {
  description = "Map of id values across all actions_organization_workflow_permissions, keyed the same as var.actions_organization_workflow_permissions"
  value       = { for k, v in github_actions_organization_workflow_permissions.actions_organization_workflow_permissions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "actions_organization_workflow_permissions_can_approve_pull_request_reviews" {
  description = "Map of can_approve_pull_request_reviews values across all actions_organization_workflow_permissions, keyed the same as var.actions_organization_workflow_permissions"
  value       = { for k, v in github_actions_organization_workflow_permissions.actions_organization_workflow_permissions : k => v.can_approve_pull_request_reviews if v.can_approve_pull_request_reviews != null }
}
output "actions_organization_workflow_permissions_default_workflow_permissions" {
  description = "Map of default_workflow_permissions values across all actions_organization_workflow_permissions, keyed the same as var.actions_organization_workflow_permissions"
  value       = { for k, v in github_actions_organization_workflow_permissions.actions_organization_workflow_permissions : k => v.default_workflow_permissions if v.default_workflow_permissions != null && length(v.default_workflow_permissions) > 0 }
}
output "actions_organization_workflow_permissions_organization_slug" {
  description = "Map of organization_slug values across all actions_organization_workflow_permissions, keyed the same as var.actions_organization_workflow_permissions"
  value       = { for k, v in github_actions_organization_workflow_permissions.actions_organization_workflow_permissions : k => v.organization_slug if v.organization_slug != null && length(v.organization_slug) > 0 }
}

