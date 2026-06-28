############################################
# Resource Group
############################################

output "resource_group_name" {
  description = "Azure Resource Group Name"
  value       = azurerm_resource_group.this.name
}

output "resource_group_id" {
  description = "Azure Resource Group ID"
  value       = azurerm_resource_group.this.id
}

output "location" {
  description = "Azure Region"
  value       = azurerm_resource_group.this.location
}

############################################
# Virtual Network
############################################

output "vnet_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.this.name
}

output "vnet_id" {
  description = "Virtual Network ID"
  value       = azurerm_virtual_network.this.id
}

output "vnet_address_space" {
  description = "Virtual Network Address Space"
  value       = azurerm_virtual_network.this.address_space
}

############################################
# Public Subnet
############################################

output "public_subnet_name" {
  description = "Public Subnet Name"
  value       = azurerm_subnet.public.name
}

output "public_subnet_id" {
  description = "Public Subnet ID"
  value       = azurerm_subnet.public.id
}

############################################
# Private Subnet
############################################

output "private_subnet_name" {
  description = "Private Subnet Name"
  value       = azurerm_subnet.private.name
}

output "private_subnet_id" {
  description = "Private Subnet ID"
  value       = azurerm_subnet.private.id
}

############################################
# Azure Bastion Subnet
############################################

output "bastion_subnet_name" {
  description = "Azure Bastion Subnet Name"
  value       = azurerm_subnet.bastion.name
}

output "bastion_subnet_id" {
  description = "Azure Bastion Subnet ID"
  value       = azurerm_subnet.bastion.id
}

############################################
# Application Gateway Subnet
############################################

output "appgateway_subnet_name" {
  description = "Application Gateway Subnet Name"
  value       = azurerm_subnet.appgateway.name
}

output "appgateway_subnet_id" {
  description = "Application Gateway Subnet ID"
  value       = azurerm_subnet.appgateway.id
}