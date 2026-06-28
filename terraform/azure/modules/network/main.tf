############################################
# Resource Group
############################################

resource "azurerm_resource_group" "this" {

  name = var.resource_group_name != "" ? var.resource_group_name : local.resource_group_name

  location = var.location

  tags = merge(
    local.common_tags,
    var.tags
  )
}

############################################
# Virtual Network
############################################

resource "azurerm_virtual_network" "this" {

  name                = local.vnet_name

  location            = azurerm_resource_group.this.location

  resource_group_name = azurerm_resource_group.this.name

  address_space = var.vnet_address_space

  dns_servers = var.dns_servers

  tags = merge(
    local.common_tags,
    var.tags
  )
}

############################################
# Public Subnet
############################################

resource "azurerm_subnet" "public" {

  name = local.public_subnet_name

  resource_group_name = azurerm_resource_group.this.name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.public_subnet_prefix
}

############################################
# Private Subnet
############################################

resource "azurerm_subnet" "private" {

  name = local.private_subnet_name

  resource_group_name = azurerm_resource_group.this.name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.private_subnet_prefix
}

############################################
# Azure Bastion Subnet
############################################

resource "azurerm_subnet" "bastion" {

  name = local.bastion_subnet_name

  resource_group_name = azurerm_resource_group.this.name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.bastion_subnet_prefix
}

############################################
# Application Gateway Subnet
############################################

resource "azurerm_subnet" "appgateway" {

  name = local.appgw_subnet_name

  resource_group_name = azurerm_resource_group.this.name

  virtual_network_name = azurerm_virtual_network.this.name

  address_prefixes = var.appgw_subnet_prefix
}