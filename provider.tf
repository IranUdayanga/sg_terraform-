provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "terraform-state-rg"
    storage_account_name = "terraformstatemyapp"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
    access_key           = "access_key" # replace 
  }
}
