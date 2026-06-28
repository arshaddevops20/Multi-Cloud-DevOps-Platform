locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  nat_gateway_name = "${local.prefix}-natgw"

  public_ip_name = "${local.prefix}-nat-pip"

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