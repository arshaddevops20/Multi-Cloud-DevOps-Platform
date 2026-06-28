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
# Public IP
############################################

variable "name" {
  description = "Public IP suffix"

  type = string
}

variable "sku" {
  type    = string
  default = "Standard"

  validation {
    condition = contains(
      ["Standard"],
      var.sku
    )

    error_message = "Only Standard SKU supported."
  }
}

variable "allocation_method" {
  type    = string
  default = "Static"
}

variable "zones" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}