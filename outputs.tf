output "kusto_cluster_managed_private_endpoints" {
  description = "All kusto_cluster_managed_private_endpoint resources"
  value       = azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints
}
output "kusto_cluster_managed_private_endpoints_cluster_name" {
  description = "List of cluster_name values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.cluster_name]
}
output "kusto_cluster_managed_private_endpoints_group_id" {
  description = "List of group_id values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.group_id]
}
output "kusto_cluster_managed_private_endpoints_name" {
  description = "List of name values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.name]
}
output "kusto_cluster_managed_private_endpoints_private_link_resource_id" {
  description = "List of private_link_resource_id values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.private_link_resource_id]
}
output "kusto_cluster_managed_private_endpoints_private_link_resource_region" {
  description = "List of private_link_resource_region values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.private_link_resource_region]
}
output "kusto_cluster_managed_private_endpoints_request_message" {
  description = "List of request_message values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.request_message]
}
output "kusto_cluster_managed_private_endpoints_resource_group_name" {
  description = "List of resource_group_name values across all kusto_cluster_managed_private_endpoints"
  value       = [for k, v in azurerm_kusto_cluster_managed_private_endpoint.kusto_cluster_managed_private_endpoints : v.resource_group_name]
}

