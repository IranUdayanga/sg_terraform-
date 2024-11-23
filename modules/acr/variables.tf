variable "name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "location" {
  description = "Azure region for ACR"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name to deploy ACR"
  type        = string
}

variable "sku" {
  description = "SKU of the Azure Container Registry"
  default     = "Basic"
}

