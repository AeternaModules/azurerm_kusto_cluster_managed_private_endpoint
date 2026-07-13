variable "kusto_cluster_managed_private_endpoints" {
  description = <<EOT
Map of kusto_cluster_managed_private_endpoints, attributes below
Required:
    - cluster_name
    - group_id
    - name
    - private_link_resource_id
    - resource_group_name
Optional:
    - private_link_resource_region
    - request_message
EOT

  type = map(object({
    cluster_name                 = string
    group_id                     = string
    name                         = string
    private_link_resource_id     = string
    resource_group_name          = string
    private_link_resource_region = optional(string)
    request_message              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        length(v.group_id) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        v.private_link_resource_region == null || (length(v.private_link_resource_region) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.kusto_cluster_managed_private_endpoints : (
        v.request_message == null || (length(v.request_message) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

