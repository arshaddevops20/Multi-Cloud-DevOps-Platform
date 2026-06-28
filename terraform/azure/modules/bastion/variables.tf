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
# Network
############################################

variable "bastion_subnet_id" {
  description = "Azure Bastion Subnet ID"
  type        = string
}

############################################
# Bastion SKU
############################################

variable "sku" {
  type    = string
  default = "Standard"

  validation {
    condition = contains(
      ["Basic", "Standard"],
      var.sku
    )

    error_message = "SKU must be Basic or Standard."
  }
}

############################################
# Features
############################################

variable "copy_paste_enabled" {
  type    = bool
  default = true
}

variable "file_copy_enabled" {
  type    = bool
  default = true
}

variable "ip_connect_enabled" {
  type    = bool
  default = true
}

variable "shareable_link_enabled" {
  type    = bool
  default = false
}

variable "tunneling_enabled" {
  type    = bool
  default = true
}


############################################
# Public IP
############################################

variable "public_ip_id" {
  type = string
}

############################################
# Tags
############################################

variable "tags" {
  type    = map(string)
  default = {}
}