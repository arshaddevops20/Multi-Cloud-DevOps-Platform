############################################
# Route Table
############################################

output "route_table_id" {
  description = "Azure Route Table ID"
  value       = azurerm_route_table.this.id
}

output "route_table_name" {
  description = "Azure Route Table Name"
  value       = azurerm_route_table.this.name
}