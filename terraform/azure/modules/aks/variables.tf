############################################
# Project
############################################

variable "project_name" {
  description = "Project name"
  type        = string
}

variable "environment" {
  description = "Environment"
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
# Networking
############################################

variable "subnet_id" {
  description = "AKS Subnet ID"
  type        = string
}

############################################
# Managed Identity
############################################

variable "managed_identity_id" {
  description = "User Assigned Managed Identity Resource ID"
  type        = string
}

variable "managed_identity_principal_id" {
  description = "Managed Identity Principal ID"
  type        = string
}

############################################
# Azure Container Registry
############################################

variable "acr_id" {
  description = "Azure Container Registry ID"
  type        = string
}

############################################
# Log Analytics
############################################

variable "log_analytics_workspace_id" {
  description = "Log Analytics Workspace ID"
  type        = string
}

############################################
# Kubernetes Version
############################################

variable "kubernetes_version" {
  description = "AKS Kubernetes Version"
  type        = string
  default     = null
}

############################################
# AKS Settings
############################################

variable "sku_tier" {
  description = "AKS SKU"
  type        = string
  default     = "Free"
}

variable "private_cluster_enabled" {
  description = "Enable Private Cluster"
  type        = bool
  default     = false
}

variable "automatic_upgrade_channel" {
  description = "Automatic Upgrade Channel"
  type        = string
  default     = "stable"
}

############################################
# System Node Pool
############################################

variable "system_vm_size" {
  type    = string
  default = "Standard_D2s_v5"
}

variable "system_node_count" {
  type    = number
  default = 2
}

variable "system_min_count" {
  type    = number
  default = 2
}

variable "system_max_count" {
  type    = number
  default = 5
}

############################################
# User Node Pool
############################################

variable "user_node_pool_name" {
  type    = string
  default = "apps"
}

variable "user_vm_size" {
  type    = string
  default = "Standard_D2s_v5"
}

variable "user_node_count" {
  type    = number
  default = 2
}

variable "user_min_count" {
  type    = number
  default = 2
}

variable "user_max_count" {
  type    = number
  default = 5
}

############################################
# Availability Zones
############################################

variable "availability_zones" {
  type    = list(string)
  default = []
}

############################################
# Tags
############################################

variable "tags" {
  description = "Resource Tags"
  type        = map(string)
  default     = {}
}


variable "tenant_id" {
  type = string
}

variable "admin_group_object_ids" {
  type = list(string)
}