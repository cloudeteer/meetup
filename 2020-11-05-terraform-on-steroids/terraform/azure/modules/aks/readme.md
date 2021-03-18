#Sample Guide for deploying AKS Cluster

##Steps

### Provider configuration
Please use below provider in main.tf to use this module
provider "azurerm" {
  version = "=2.7.0"
  features {}
}

### Module Call
Sample module call is below.
"****" values should be fetched from key-vault

module "akscluster" {
source                                = "../../modules/aks_v1"
rbac_enabled                          = "true"
server_app_id                         = "****"
server_app_secret                     = "****"
client_app_id                         = "****"
cluster_name                          = "k8s123"
dns_prefix                            = "k8s123"
kubernetes_version                    = "1.16.7"
resource_group_name                   = "rg-aks"
node_resource_group                   = "rg-aks-t01"
private_cluster_enabled               = true
network_plugin                        = "kubenet"
load_balancer_sku                     = "Standard"
location                              = var.location
admin_username                        = "azureuser"
agent_count                           =  1
os_disk_size_gb                       = "30"
oms_agent                             = false
client_id                             = "****"
client_secret                         = "****"
subnet_id                             = "/subscriptions/1234/resourceGroups/rg-aks/providers/Microsoft.Network/virtualNetworks/aks-vnet/subnets/aks-subnet"
vm_size                               = "Standard_DS2_v2"
tags                                  = "${var.tags}"
}