module "akscluster" {
source                                = "../../modules/aks"
cluster_name                          = "DEMO-OPS-STACK-AKS-1"
dns_prefix                            = "DEMO-OPS-STACK-AKS-1"
kubernetes_version                    = "1.17.11"
resource_group_name                   = module.RG.resource_groups["tfstate"].name
node_resource_group                   = "CDT_DEV_OPS-STACK_AKS_1"
location                              = var.location
admin_username                        = "azureuser"
agent_count                           =  3
os_disk_size_gb                       = "30"
subnet_id                             = module.network.subnet_id[0]
vm_size                               = "Standard_DS2_v2"
tags                                  = var.tags
}