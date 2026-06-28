##############################
# Azure
##############################

variable "azure_subscription_id" {
  type = string
}

variable "azure_location" {
  type    = string
  default = "East US"
}

##############################
# AWS
##############################

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

##############################
# GCP
##############################

variable "gcp_project" {
  type = string
}

variable "gcp_region" {
  type    = string
  default = "us-central1"
}

##############################
# Common
##############################

variable "environment" {
  type    = string
  default = "dev"
}

variable "project_name" {
  type    = string
  default = "multi-cloud-platform"
}