env                    = "dev"
location               = "eastus"
resource_group_name    = "dev-sg-webapp-rg-eastus"
app_name                = "sg-webapp"

# VNET variables
vnet_name              = "dev-sg-webapp-vnet-eastus"
vnet_address_space     = ["10.0.0.0/16"]

# AKS variables
aks_name               = "dev-sg-webapp-aks-eastus"
aks_dns_prefix         = "dev"
aks_node_count         = 2
aks_vm_size            = "Standard_B4ms"

# ACR variables
acr_name               = "sgwebapp"
acr_sku                = "Basic"

# Blob Storage variables
blob_storage_name      = "sg-webappblob"
blob_account_tier      = "Standard"

