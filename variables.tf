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
  # --- Unconfirmed validation candidates, derived from azurerm_kusto_cluster_managed_private_endpoint's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: cluster_name
  #   source:    [from validate.ClusterName] !regexp.MustCompile(`^[a-z][a-z0-9\-]+$`).MatchString(name)
  # path: cluster_name
  #   source:    [from validate.ClusterName] len(name) < 4 || len(name) > 22
  # path: private_link_resource_id
  #   source:    [from azure.ValidateResourceID] !ok
  # path: private_link_resource_id
  #   source:    [from azure.ValidateResourceID] err != nil
}

