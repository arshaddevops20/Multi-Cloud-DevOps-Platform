############################################
# NAT Gateway
############################################

resource "azurerm_nat_gateway" "this" {
  name                = local.nat_gateway_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku_name = "Standard"

  idle_timeout_in_minutes = var.idle_timeout_in_minutes

  zones = var.zones

  tags = local.common_tags
}

############################################
# Associate Public IP with NAT Gateway
############################################

resource "azurerm_nat_gateway_public_ip_association" "this" {
  nat_gateway_id       = azurerm_nat_gateway.this.id
  public_ip_address_id = var.public_ip_id
}

############################################
# Associate NAT Gateway with Private Subnet
############################################

resource "azurerm_subnet_nat_gateway_association" "this" {
  subnet_id      = var.private_subnet_id
  nat_gateway_id = azurerm_nat_gateway.this.id
}