############################################
# Public NSG
############################################

resource "azurerm_network_security_group" "public" {

  name                = local.public_nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = local.common_tags
}

############################################
# Private NSG
############################################

resource "azurerm_network_security_group" "private" {

  name                = local.private_nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = local.common_tags
}

##################################################
# Public NSG Rules
##################################################

# HTTP

resource "azurerm_network_security_rule" "http" {

  name                        = "Allow-HTTP"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"

  source_port_range           = "*"
  destination_port_range      = "80"

  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = var.resource_group_name

  network_security_group_name = azurerm_network_security_group.public.name
}

# HTTPS

resource "azurerm_network_security_rule" "https" {

  name                        = "Allow-HTTPS"
  priority                    = 110
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"

  source_port_range           = "*"
  destination_port_range      = "443"

  source_address_prefix       = "*"
  destination_address_prefix  = "*"

  resource_group_name         = var.resource_group_name

  network_security_group_name = azurerm_network_security_group.public.name
}

##################################################
# Private NSG Rules
##################################################

# Allow traffic inside Virtual Network

resource "azurerm_network_security_rule" "vnet" {

  name                        = "Allow-VNet"

  priority                    = 100

  direction                   = "Inbound"

  access                      = "Allow"

  protocol                    = "*"

  source_port_range           = "*"

  destination_port_range      = "*"

  source_address_prefix       = "VirtualNetwork"

  destination_address_prefix  = "VirtualNetwork"

  resource_group_name         = var.resource_group_name

  network_security_group_name = azurerm_network_security_group.private.name
}

##################################################
# Associate Public NSG
##################################################

resource "azurerm_subnet_network_security_group_association" "public" {

  subnet_id = var.public_subnet_id

  network_security_group_id = azurerm_network_security_group.public.id
}

##################################################
# Associate Private NSG
##################################################

resource "azurerm_subnet_network_security_group_association" "private" {

  subnet_id = var.private_subnet_id

  network_security_group_id = azurerm_network_security_group.private.id
}