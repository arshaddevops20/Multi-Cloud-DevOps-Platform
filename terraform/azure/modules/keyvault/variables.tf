############################################
# Project
############################################

variable "project_name" {
  type = string
}

variable "environment" {
  type = string
}

variable "owner" {
  type    = string
  default = "Mohd Arshad"
}

############################################
# Azure
############################################

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

############################################
# Key Vault
############################################

variable "sku_name" {
  type    = string
  default = "standard"

  validation {
    condition     = contains(["standard", "premium"], var.sku_name)
    error_message = "SKU must be standard or premium."
  }
}

variable "enable_rbac_authorization" {
  type    = bool
  default = true
}

variable "purge_protection_enabled" {
  type    = bool
  default = true
}

variable "soft_delete_retention_days" {
  type    = number
  default = 90
}

variable "public_network_access_enabled" {
  type    = bool
  default = true
}

############################################
# Tags
############################################

variable "tags" {
  type    = map(string)
  default = {}
}