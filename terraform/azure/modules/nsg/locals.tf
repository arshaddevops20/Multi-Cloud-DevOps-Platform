locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  public_nsg_name  = "${local.prefix}-public-nsg"
  private_nsg_name = "${local.prefix}-private-nsg"

  common_tags = merge(
    {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
      Owner       = var.owner
    },
    var.tags
  )

}