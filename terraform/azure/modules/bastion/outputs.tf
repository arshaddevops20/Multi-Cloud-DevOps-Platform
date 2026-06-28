output "bastion_id" {
  value = azurerm_bastion_host.this.id
}

output "bastion_name" {
  value = azurerm_bastion_host.this.name
}

# output "public_ip" {
#   value = azurerm_public_ip.bastion.ip_address
# }

# output "public_ip_id" {
#   value = azurerm_public_ip.bastion.id
# }