locals {
  # Naming convention
  project_name = lower(var.project_name)
  environment  = lower(var.environment)

  prefix = "${local.project_name}-${local.environment}"

  # Common tags
  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = var.owner
    Terraform   = "true"
  }

  # Resource names
  resource_group_name = "${local.prefix}-rg"

  vnet_name = "${local.prefix}-vnet"

  public_subnet_name = "${local.prefix}-public-subnet"

  private_subnet_name = "${local.prefix}-private-subnet"

  bastion_subnet_name = "AzureBastionSubnet"

  appgw_subnet_name = "ApplicationGatewaySubnet"
}