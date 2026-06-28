locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  workspace_name = "${local.prefix}-law"

  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = var.owner
      Terraform   = "true"
    },
    var.tags
  )

}