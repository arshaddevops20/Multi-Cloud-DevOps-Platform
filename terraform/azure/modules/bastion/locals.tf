locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  bastion_name = "${local.prefix}-bastion"

  bastion_pip_name = "${local.prefix}-bastion-pip"

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