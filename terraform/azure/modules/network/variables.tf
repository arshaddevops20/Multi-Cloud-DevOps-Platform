############################################
# Project Information
############################################

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment (dev, test, prod)"
  type        = string
}

variable "owner" {
  description = "Resource owner"
  type        = string
  default     = "Mohd Arshad"
}

############################################
# Azure
############################################

variable "location" {
  description = "Azure region"
  type        = string
  default     = "East US"
}

############################################
# Resource Group
############################################

variable "resource_group_name" {
  description = "Optional existing resource group name"
  type        = string
  default     = ""
}

############################################
# Virtual Network
############################################

variable "vnet_address_space" {
  description = "Virtual Network CIDR"

  type = list(string)

  default = [
    "10.0.0.0/16"
  ]
}

############################################
# Public Subnet
############################################

variable "public_subnet_prefix" {

  type = list(string)

  default = [
    "10.0.1.0/24"
  ]
}

############################################
# Private Subnet
############################################

variable "private_subnet_prefix" {

  type = list(string)

  default = [
    "10.0.2.0/24"
  ]
}

############################################
# Bastion Subnet
############################################

variable "bastion_subnet_prefix" {

  type = list(string)

  default = [
    "10.0.3.0/27"
  ]
}

############################################
# Application Gateway Subnet
############################################

variable "appgw_subnet_prefix" {

  type = list(string)

  default = [
    "10.0.4.0/24"
  ]
}

############################################
# DNS Servers
############################################

variable "dns_servers" {

  description = "Custom DNS servers"

  type = list(string)

  default = []
}

############################################
# Tags
############################################

variable "tags" {

  description = "Additional resource tags"

  type = map(string)

  default = {}
}