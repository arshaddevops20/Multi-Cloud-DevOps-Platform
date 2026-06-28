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
# Tags
############################################

variable "tags" {
  type    = map(string)
  default = {}
}