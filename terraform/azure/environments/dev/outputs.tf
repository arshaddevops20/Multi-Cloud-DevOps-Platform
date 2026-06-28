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