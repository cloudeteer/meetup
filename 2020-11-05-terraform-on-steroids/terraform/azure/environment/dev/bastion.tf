module "bastionhost" {
source                  = "../../modules/bastionhost"
resource_group_name     = module.RG.resource_groups["tfstate"].name
location                = var.location
subnet_id               = module.network.subnet_id[1]
bastion_host_name       = "bastion-cdt-test-001"
pip_name                = "pip-bastion-test-001"
allocation_method       = "Static"
idle_timeout_in_minutes = 5
sku                     = "Standard"
tags                    = var.tags
}