############################################
# Azure Kubernetes Service
############################################

resource "azurerm_kubernetes_cluster" "this" {

  name                = local.aks_name
  location            = var.location
  resource_group_name = var.resource_group_name

  dns_prefix = local.dns_prefix

  kubernetes_version = var.kubernetes_version

  sku_tier = var.sku_tier

  private_cluster_enabled = var.private_cluster_enabled

  automatic_upgrade_channel = var.automatic_upgrade_channel

  #################################################
  # Identity
  #################################################

  identity {

    type = "UserAssigned"

    identity_ids = [
      var.managed_identity_id
    ]

  }

  #################################################
  # OIDC + Workload Identity
  #################################################

  oidc_issuer_enabled = true

  workload_identity_enabled = true

  #################################################
  # Azure RBAC
  #################################################

 azure_active_directory_role_based_access_control {

  tenant_id = var.tenant_id

  admin_group_object_ids = var.admin_group_object_ids

  azure_rbac_enabled = true

}

  #################################################
  # Default Node Pool
  #################################################

  default_node_pool {

    name = local.system_node_pool_name

    vm_size = var.system_vm_size

    vnet_subnet_id = var.subnet_id

    auto_scaling_enabled = true

    node_count = var.system_node_count

    min_count = var.system_min_count

    max_count = var.system_max_count

    # zones = var.availability_zones

    zones = length(var.availability_zones) > 0 ? var.availability_zones : null
    
    type = "VirtualMachineScaleSets"

    os_disk_size_gb = 128

    os_disk_type = "Managed"

    only_critical_addons_enabled = true

    temporary_name_for_rotation = "systemtmp"

  }

  #################################################
  # Network Profile
  #################################################

  network_profile {

    network_plugin = "azure"

    network_plugin_mode = "overlay"

    network_policy = "azure"

    load_balancer_sku = "standard"

    outbound_type = "loadBalancer"

  }

  #################################################
  # Auto Image Cleaner
  #################################################

  image_cleaner_enabled = true

  image_cleaner_interval_hours = 48

  #################################################
  # Local Accounts
  #################################################

  local_account_disabled = false

  #################################################
  # Microsoft Defender
  #################################################

  microsoft_defender {

    log_analytics_workspace_id = var.log_analytics_workspace_id

  }

  #################################################
  # Monitoring
  #################################################

  oms_agent {

    log_analytics_workspace_id = var.log_analytics_workspace_id

  }

  #################################################
  # Tags
  #################################################

  tags = local.common_tags

}