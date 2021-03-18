module "network" {
  # VNET definitions
  source              = "../../modules/network"
  vnet_name           = "vnet-cdtdemo-test-weu-10.90.0.0_24"
  resource_group_name = module.RG.resource_groups["tfstate"].name
  location            = var.location
  vnet_address_space  = ["10.90.0.0/24"]
  # SUBNET definitions 
  subnet_names             = ["vnet-cdtdemo-test-weu-10.90.0.0_25", "AzureBastionSubnet"]
  subnet_prefixes          = ["10.90.0.0/25", "10.90.0.224/27"]
  subnet_service_endpoints = ["Microsoft.Sql"]
  tags                     = var.tags
}