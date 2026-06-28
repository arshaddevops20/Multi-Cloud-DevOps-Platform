############################################
# NAT Gateway
############################################

output "nat_gateway_id" {
  description = "Azure NAT Gateway ID"
  value       = azurerm_nat_gateway.this.id
}

output "nat_gateway_name" {
  description = "Azure NAT Gateway Name"
  value       = azurerm_nat_gateway.this.name
}

############################################
# Public IP
############################################

# output "public_ip_id" {
#   description = "Public IP Resource ID"
#   value       = azurerm_public_ip.nat.id
# }

# output "public_ip_name" {
#   description = "Public IP Name"
#   value       = azurerm_public_ip.nat.name
# }

# output "public_ip_address" {
#   description = "Public IP Address"
#   value       = azurerm_public_ip.nat.ip_address
# }