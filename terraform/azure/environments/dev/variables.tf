############################################
# Azure
############################################

variable "subscription_id" {
  type = string
}

variable "location" {
  default = "East US"
}

############################################
# Project
############################################

variable "project_name" {
  default = "multi-cloud-platform"
}

variable "environment" {
  default = "dev"
}

variable "owner" {
  default = "Mohd Arshad"
}

variable "tenant_id" {
  type = string
}