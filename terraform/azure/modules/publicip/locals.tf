locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  public_ip_name = "${local.prefix}-${var.name}"

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