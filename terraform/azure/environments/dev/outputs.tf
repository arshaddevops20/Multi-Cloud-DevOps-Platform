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