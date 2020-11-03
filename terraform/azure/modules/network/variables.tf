variable "vnet_name" {
  description = "The name of the virtual network. Changing this forces a new resource to be created."
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group in which to create the virtual network."
  default     = ""
}

variable "location" {
  description = "The location/region where the core network will be created. The full list of Azure regions can be found at https://azure.microsoft.com/regions"
  default     = ""
}

variable "vnet_address_space" {
  description = "The address space that is used the virtual network. You can supply more than one address space. Changing this forces a new resource to be created."
  default     = [""]
}

# Subnet arguments
# https://www.terraform.io/docs/providers/azurerm/r/subnet.html

variable "subnet_names" {
  description = "(Required) The name of the subnet."
  default     = [""]
}

variable "subnet_prefixes" {
  description = "(Required) The address prefix to use for the subnet."
  default     = [""]
}

# https://docs.microsoft.com/en-us/azure/virtual-network/virtual-network-service-endpoints-overview
variable "subnet_service_endpoints" {
  description = "(Optional) The list of Service endpoints to associate with the subnet. Possible values include: Microsoft.AzureActiveDirectory, Microsoft.AzureCosmosDB, Microsoft.EventHub, Microsoft.KeyVault, Microsoft.ServiceBus, Microsoft.Sql and Microsoft.Storage."
  default     = []
}

variable "tags" {
  type        = map(string)
  description = "Mandatory tags to use for Azure resources"

  default = {
    environment = "__environment__"
    owner       = "__owner__"
    project     = "__project__"
    sre-type    = "__sre-type__"
    sre-team    = "__sre-team__"
    cost-center = "__cost-center__"
  }
}