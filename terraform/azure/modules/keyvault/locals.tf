locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  keyvault_name = lower(
    replace("${var.project_name}${var.environment}kv", "-", "")
  )

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