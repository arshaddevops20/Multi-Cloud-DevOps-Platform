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

############################################
# ACR
############################################

variable "sku" {
  type    = string
  default = "Basic"

  validation {
    condition = contains(
      ["Basic", "Standard", "Premium"],
      var.sku
    )

    error_message = "SKU must be Basic, Standard or Premium."
  }
}

variable "admin_enabled" {
  type    = bool
  default = false
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