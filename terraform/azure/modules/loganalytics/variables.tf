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
# Log Analytics
############################################

variable "sku" {
  type    = string
  default = "PerGB2018"

  validation {
    condition = contains(
      ["PerGB2018", "CapacityReservation"],
      var.sku
    )

    error_message = "Invalid SKU."
  }
}

variable "retention_in_days" {
  type    = number
  default = 30
}

variable "daily_quota_gb" {
  type    = number
  default = -1
}

variable "internet_ingestion_enabled" {
  type    = bool
  default = true
}

variable "internet_query_enabled" {
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