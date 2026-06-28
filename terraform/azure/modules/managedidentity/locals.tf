locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  identity_name = "${local.prefix}-identity"

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