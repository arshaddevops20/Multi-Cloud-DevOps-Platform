############################################
# User Node Pool
############################################

resource "azurerm_kubernetes_cluster_node_pool" "apps" {

  name                  = var.user_node_pool_name

  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id

  vm_size               = var.user_vm_size

  mode                  = "User"

  vnet_subnet_id        = var.subnet_id

  orchestrator_version  = var.kubernetes_version

  auto_scaling_enabled  = true

  node_count            = var.user_node_count

  min_count             = var.user_min_count

  max_count             = var.user_max_count

#   zones = var.availability_zones

    zones = length(var.availability_zones) > 0 ? var.availability_zones : null

  os_disk_size_gb = 128

  os_disk_type = "Managed"

  node_labels = {

    workload    = "applications"

    environment = var.environment

  }

  tags = local.common_tags

}