output "kusto_cluster_managed_private_endpoints_cluster_name" {
  description = "Map of cluster_name values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.cluster_name }
}
output "kusto_cluster_managed_private_endpoints_group_id" {
  description = "Map of group_id values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.group_id }
}
output "kusto_cluster_managed_private_endpoints_name" {
  description = "Map of name values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.name }
}
output "kusto_cluster_managed_private_endpoints_private_link_resource_id" {
  description = "Map of private_link_resource_id values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.private_link_resource_id }
}
output "kusto_cluster_managed_private_endpoints_private_link_resource_region" {
  description = "Map of private_link_resource_region values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.private_link_resource_region }
}
output "kusto_cluster_managed_private_endpoints_request_message" {
  description = "Map of request_message values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.request_message }
}
output "kusto_cluster_managed_private_endpoints_resource_group_name" {
  description = "Map of resource_group_name values across all kusto_cluster_managed_private_endpoints, keyed the same as var.kusto_cluster_managed_private_endpoints"
  value       = { for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : k => v.resource_group_name }
}

