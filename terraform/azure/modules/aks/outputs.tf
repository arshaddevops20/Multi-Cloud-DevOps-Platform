############################################
# AKS
############################################

output "cluster_id" {
  value = azurerm_kubernetes_cluster.this.id
}

output "cluster_name" {
  value = azurerm_kubernetes_cluster.this.name
}

output "kubelet_identity" {
  value = azurerm_kubernetes_cluster.this.kubelet_identity
}

output "oidc_issuer_url" {
  value = azurerm_kubernetes_cluster.this.oidc_issuer_url
}

output "node_resource_group" {
  value = azurerm_kubernetes_cluster.this.node_resource_group
}

output "fqdn" {
  value = azurerm_kubernetes_cluster.this.fqdn
}