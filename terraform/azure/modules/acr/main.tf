resource "azurerm_container_registry" "this" {

  name                = local.acr_name

  location            = var.location

  resource_group_name = var.resource_group_name

  sku = var.sku

  admin_enabled = var.admin_enabled

  public_network_access_enabled = var.public_network_access_enabled

  tags = local.common_tags

}