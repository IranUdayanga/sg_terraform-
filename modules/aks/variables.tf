variable "name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "location" {
  description = "Azure region for AKS cluster"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name to deploy AKS"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  default     = 3
}

variable "vm_size" {
  description = "VM size for AKS nodes"
  default     = "Standard_DS2_v2"
}

