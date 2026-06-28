############################################
# Project Information
############################################

variable "project_name" {
  description = "Project Name"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "owner" {
  description = "Owner"

  type = string

  default = "Mohd Arshad"
}

############################################
# Azure
############################################

variable "location" {
  description = "Azure Region"

  type = string
}

variable "resource_group_name" {
  description = "Resource Group Name"

  type = string
}

############################################
# Network
############################################

variable "private_subnet_id" {
  description = "Private Subnet ID"

  type = string
}

############################################
# User Defined Routes
############################################

variable "routes" {

  description = "User Defined Routes"

  type = list(object({

    name                   = string
    address_prefix         = string
    next_hop_type          = string
    next_hop_in_ip_address = optional(string)

  }))

  default = []
}

############################################
# BGP Route Propagation
############################################

variable "bgp_route_propagation_enabled" {

  description = "Enable BGP Route Propagation"

  type = bool

  default = true
}

############################################
# Tags
############################################

variable "tags" {

  description = "Resource Tags"

  type = map(string)

  default = {}
}