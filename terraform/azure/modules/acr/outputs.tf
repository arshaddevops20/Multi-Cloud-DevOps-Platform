output "acr_id" {
  description = "Container Registry ID"
  value       = azurerm_container_registry.this.id
}

output "acr_name" {
  description = "Container Registry Name"
  value       = azurerm_container_registry.this.name
}

output "login_server" {
  description = "ACR Login Server"
  value       = azurerm_container_registry.this.login_server
}

output "sku" {
  value = azurerm_container_registry.this.sku
}