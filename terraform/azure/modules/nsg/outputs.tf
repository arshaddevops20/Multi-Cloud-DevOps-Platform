############################################
# Public NSG
############################################

output "public_nsg_id" {
  description = "Public Network Security Group ID"
  value       = azurerm_network_security_group.public.id
}

output "public_nsg_name" {
  description = "Public Network Security Group Name"
  value       = azurerm_network_security_group.public.name
}

############################################
# Private NSG
############################################

output "private_nsg_id" {
  description = "Private Network Security Group ID"
  value       = azurerm_network_security_group.private.id
}

output "private_nsg_name" {
  description = "Private Network Security Group Name"
  value       = azurerm_network_security_group.private.name
}