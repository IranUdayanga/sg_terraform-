variable "name" {
  description = "Name of the VNET"
  type        = string
}

variable "location" {
  description = "Azure region for VNET"
  type        = string
}

variable "resource_group_name" {
  description = "The resource group name to deploy the VNET"
  type        = string
}

variable "address_space" {
  description = "The address space of the VNET"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}


variable "env" {
  description = "The environment to deploy to (e.g., dev, prod)"
  type        = string
}

variable "app_name" {
  description = "The name of the application"
  type        = string
  default     = "compose-integration"  # Default value
}

