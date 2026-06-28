############################################
# Allow AKS to Pull Images from ACR
############################################

resource "azurerm_role_assignment" "acr_pull" {

  scope = var.acr_id

  role_definition_name = "AcrPull"

  principal_id = var.managed_identity_principal_id

}