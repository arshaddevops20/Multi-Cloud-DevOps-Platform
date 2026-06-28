output "resource_group" {
  value = module.network.resource_group_name
}

output "vnet" {
  value = module.network.vnet_name
}

output "acr_login_server" {
  value = module.acr.login_server
}

output "bastion_public_ip" {
  value = module.bastion_public_ip.public_ip_address
}

output "nat_public_ip" {
  value = module.nat_public_ip.public_ip_address
}


output "managed_identity_name" {
  value = module.managedidentity.name
}

output "managed_identity_client_id" {
  value = module.managedidentity.client_id
}

output "managed_identity_principal_id" {
  value = module.managedidentity.principal_id
}


output "keyvault_name" {
  value = module.keyvault.keyvault_name
}

output "keyvault_uri" {
  value = module.keyvault.vault_uri
}


output "log_analytics_workspace_name" {
  value = module.loganalytics.workspace_name
}

output "log_analytics_workspace_id" {
  value = module.loganalytics.workspace_id
}

output "aks_cluster_name" {
  value = module.aks.cluster_name
}

output "aks_fqdn" {
  value = module.aks.fqdn
}

output "oidc_issuer" {
  value = module.aks.oidc_issuer_url
}