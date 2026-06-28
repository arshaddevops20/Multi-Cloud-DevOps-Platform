########################################
# Azure
########################################

provider "azurerm" {
  features {}

  subscription_id = var.azure_subscription_id
}

########################################
# AWS
########################################

provider "aws" {
  region = var.aws_region
}

########################################
# Google Cloud
########################################

provider "google" {
  project = var.gcp_project
  region  = var.gcp_region
}