locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  route_table_name = "${local.prefix}-rt"

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