variable "actions_organization_workflow_permissions" {
  description = <<EOT
Map of actions_organization_workflow_permissions, attributes below
Required:
    - organization_slug
Optional:
    - can_approve_pull_request_reviews
    - default_workflow_permissions
EOT

  type = map(object({
    organization_slug                = string
    can_approve_pull_request_reviews = optional(bool)
    default_workflow_permissions     = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.actions_organization_workflow_permissions : (
        v.default_workflow_permissions == null || (contains(["read", "write"], v.default_workflow_permissions))
      )
    ])
    error_message = "must be one of: read, write"
  }
}

