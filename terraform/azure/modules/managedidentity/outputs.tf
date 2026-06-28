output "id" {
  description = "Managed Identity Resource ID"
  value       = azurerm_user_assigned_identity.this.id
}

output "client_id" {
  description = "Managed Identity Client ID"
  value       = azurerm_user_assigned_identity.this.client_id
}

output "principal_id" {
  description = "Managed Identity Principal ID"
  value       = azurerm_user_assigned_identity.this.principal_id
}

output "name" {
  description = "Managed Identity Name"
  value       = azurerm_user_assigned_identity.this.name
}