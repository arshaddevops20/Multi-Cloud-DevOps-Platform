resource "azurerm_key_vault" "this" {

  name                = local.keyvault_name

  location            = var.location

  resource_group_name = var.resource_group_name

  tenant_id = var.tenant_id

  sku_name = var.sku_name

  enable_rbac_authorization = var.enable_rbac_authorization

  purge_protection_enabled = var.purge_protection_enabled

  soft_delete_retention_days = var.soft_delete_retention_days

  public_network_access_enabled = var.public_network_access_enabled

  tags = local.common_tags

}