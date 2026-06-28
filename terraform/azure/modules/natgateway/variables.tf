############################################
# Public IP for NAT Gateway
############################################

variable "public_ip_id" {
  description = "Public IP ID for NAT Gateway"
  type        = string
}

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
  description = "Resource owner"
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
  description = "Azure Resource Group Name"
  type        = string
}

############################################
# Network
############################################

variable "private_subnet_id" {
  description = "Private Subnet ID"
  type        = string
}

############################################
# Public IP
############################################

variable "sku" {
  description = "Public IP SKU"
  type        = string
  default     = "Standard"

  validation {
    condition     = contains(["Standard"], var.sku)
    error_message = "Only Standard SKU is supported."
  }
}

variable "allocation_method" {
  description = "Public IP Allocation Method"
  type        = string
  default     = "Static"

  validation {
    condition     = contains(["Static"], var.allocation_method)
    error_message = "NAT Gateway requires a Static Public IP."
  }
}

############################################
# Availability Zones (Optional)
############################################

variable "zones" {
  description = "Availability Zones"
  type        = list(string)
  default     = []
}

############################################
# Idle Timeout
############################################

variable "idle_timeout_in_minutes" {
  description = "Idle timeout in minutes"
  type        = number
  default     = 10
}

############################################
# Tags
############################################

variable "tags" {
  description = "Additional Tags"
  type        = map(string)
  default     = {}
}