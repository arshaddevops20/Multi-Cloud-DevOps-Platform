############################################
# Project Information
############################################

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "owner" {
  description = "Owner"
  type        = string
  default     = "Mohd Arshad"
}

############################################
# Azure
############################################

variable "location" {
  description = "Azure Region"
  type        = string
}

variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
}

############################################
# Subnets
############################################

variable "public_subnet_id" {
  description = "Public Subnet ID"
  type        = string
}

variable "private_subnet_id" {
  description = "Private Subnet ID"
  type        = string
}

############################################
# Management Access
############################################

variable "allowed_ssh_cidr" {
  description = "CIDR allowed to SSH to Bastion/Public subnet"
  type        = string
  default     = "*"
}

############################################
# Tags
############################################

variable "tags" {
  description = "Additional tags"

  type = map(string)

  default = {}
}