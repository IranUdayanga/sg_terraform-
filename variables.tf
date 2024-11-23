variable "env" {
  description = "The environment to deploy to (e.g., dev, prod)"
  type        = string
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "compose-integration"  # Default value
}


variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "aks_dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "aks_node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 3
}

variable "aks_vm_size" {
  description = "The size of the virtual machines for AKS nodes"
  type        = string
}

variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "acr_sku" {
  description = "The SKU for the Azure Container Registry (e.g., Basic, Standard, Premium)"
  type        = string
}

variable "blob_storage_name" {
  description = "The name of the Azure Blob Storage account"
  type        = string
}

variable "blob_account_tier" {
  description = "The performance tier for the Blob Storage account (e.g., Standard, Premium)"
  type        = string
}


