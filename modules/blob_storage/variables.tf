variable "name" {
  description = "Name of the Azure Blob Storage"
  type        = string
}

variable "location" {
  description = "Azure region for Blob Storage"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name to deploy Blob Storage"
  type        = string
}

variable "account_tier" {
  description = "Storage account tier"
  default     = "Standard"
}

