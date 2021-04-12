variable location {
  description = "(Required) The location where the resource should be created."
  default     = ""
}

variable "resource_group_name" {
  description = "(Required) Specifies the Resource Group where resource should be created"
  default     = ""
}

variable "tags" {
  type = map(string)
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

variable "sku" {
  description = " (Optional) The SKU of the Public IP. Accepted values are Basic and Standard. Defaults to Basic"
}

variable "idle_timeout_in_minutes" {
  description = "(Optional) Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes."
}

variable "allocation_method" {
  description = " (Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic."
}

variable "pip_name" {
  description = "(Required) Specifies the name of the Public IP resource . Changing this forces a new resource to be created."
}

variable "bastion_host_name" {
  description = "(Required) Specifies the name of the Bastion Host. Changing this forces a new resource to be created."
}

variable "subnet_id" {
  description = "The subnet id of the virtual network where the Bastion host will reside."
}