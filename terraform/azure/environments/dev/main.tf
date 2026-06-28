##################################################
# Network
##################################################

module "network" {

  source = "../../modules/network"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

}

##################################################
# Public IP for Bastion
##################################################

module "bastion_public_ip" {

  source = "../../modules/publicip"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  name = "bastion-pip"

}

##################################################
# NSG
##################################################

module "nsg" {

  source = "../../modules/nsg"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  public_subnet_id = module.network.public_subnet_id

  private_subnet_id = module.network.private_subnet_id

}

##################################################
# NAT Public IP
##################################################

module "nat_public_ip" {

  source = "../../modules/publicip"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  name = "nat-pip"

}

##################################################
# NAT Gateway
##################################################

module "natgateway" {

  source = "../../modules/natgateway"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  private_subnet_id = module.network.private_subnet_id

  public_ip_id = module.nat_public_ip.public_ip_id

}

##################################################
# Route Table
##################################################

module "routetable" {

  source = "../../modules/routetable"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  private_subnet_id = module.network.private_subnet_id

}

##################################################
# Bastion
##################################################

module "bastion" {

  source = "../../modules/bastion"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

  bastion_subnet_id = module.network.bastion_subnet_id

  public_ip_id = module.bastion_public_ip.public_ip_id

}

##################################################
# Azure Container Registry
##################################################

module "acr" {

  source = "../../modules/acr"

  project_name = var.project_name

  environment = var.environment

  owner = var.owner

  location = var.location

  resource_group_name = module.network.resource_group_name

}


##################################################
# Managed Identity
##################################################

module "managedidentity" {

  source = "../../modules/managedidentity"

  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner

  location            = var.location
  resource_group_name = module.network.resource_group_name
}


##################################################
# Key Vault
##################################################

module "keyvault" {

  source = "../../modules/keyvault"

  project_name = var.project_name
  environment  = var.environment
  owner        = var.owner

  location            = var.location
  resource_group_name = module.network.resource_group_name

  tenant_id = var.tenant_id

}