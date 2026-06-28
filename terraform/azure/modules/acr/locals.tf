locals {

  prefix = "${lower(var.project_name)}-${lower(var.environment)}"

  acr_name = lower(replace("${var.project_name}${var.environment}acr", "-", ""))

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