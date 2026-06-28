locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  aks_name   = "${local.prefix}-aks"
  dns_prefix = "${local.prefix}-dns"

  system_node_pool_name = "system"

  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      Owner       = var.owner
      ManagedBy   = "Terraform"
      Terraform   = "true"
    },
    var.tags
  )

}