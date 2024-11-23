module "resource_group" {
  source   = "./modules/resource_group"
  name     = var.resource_group_name
  location = var.location
}

module "vnet" {
  source              = "./modules/vnet"
  //name                = var.vnet_name
  name                = "vnet-${var.env}-${var.app_name}-${var.location}"
  location            = var.location
  resource_group_name = module.resource_group.name
  address_space       = var.vnet_address_space
  env                 = var.env
}

module "aks" {
  source              = "./modules/aks"
  name                = "aks-${var.env}-${var.app_name}-${var.location}"
  location            = var.location
  resource_group_name = module.resource_group.name
  dns_prefix          = var.aks_dns_prefix
  node_count          = var.aks_node_count
  vm_size             = var.aks_vm_size
}

module "acr" {
  source              = "./modules/acr"
  name                = "acrwebapp${var.env}"
  location            = var.location
  resource_group_name = module.resource_group.name
  sku                 = var.acr_sku
}

module "blob_storage" {
  source              = "./modules/blob_storage"
  name                = "blobwebapp${var.env}"
  location            = var.location
  resource_group_name = module.resource_group.name
  account_tier        = var.blob_account_tier
}

