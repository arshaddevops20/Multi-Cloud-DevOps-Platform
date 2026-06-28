############################################
# Azure Bastion
############################################

resource "azurerm_bastion_host" "this" {

  name                = local.bastion_name
  location            = var.location
  resource_group_name = var.resource_group_name

  sku = var.sku

  copy_paste_enabled = var.copy_paste_enabled

  file_copy_enabled = var.file_copy_enabled

  ip_connect_enabled = var.ip_connect_enabled

  shareable_link_enabled = var.shareable_link_enabled

  tunneling_enabled = var.tunneling_enabled

  ip_configuration {

    name = "configuration"

    subnet_id = var.bastion_subnet_id

    public_ip_address_id = var.public_ip_id

  }

  tags = local.common_tags
}