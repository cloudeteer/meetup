variable resource_groups {
  description = " Resource Group Object"
  default     = {}
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
