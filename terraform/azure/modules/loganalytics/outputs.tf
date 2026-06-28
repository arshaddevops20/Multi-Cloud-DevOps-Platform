output "workspace_id" {
  description = "Workspace ID"
  value       = azurerm_log_analytics_workspace.this.id
}

output "workspace_name" {
  description = "Workspace Name"
  value       = azurerm_log_analytics_workspace.this.name
}

output "workspace_guid" {
  description = "Workspace GUID"
  value       = azurerm_log_analytics_workspace.this.workspace_id
}