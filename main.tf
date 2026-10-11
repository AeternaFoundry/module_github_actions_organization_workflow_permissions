resource "github_actions_organization_workflow_permissions" "actions_organization_workflow_permissions" {
  for_each = var.actions_organization_workflow_permissions

  organization_slug                = each.value.organization_slug
  can_approve_pull_request_reviews = each.value.can_approve_pull_request_reviews
  default_workflow_permissions     = each.value.default_workflow_permissions
}

