variable "resource_groups" {
  default = {
    tfstate = {
      name     = "RG-CDTDEMO-TEST"
      location = "westeurope"
    }
  }
}

variable "tags" {
  default = {
      environment = "Development"
      owner       = "Cloudeteer"
      costcenter  = "10001"
      project     = "OPpsStack"
      sre-type    = "Sre-Terraform"
      sre-team    = "Cdt-Sre"
  }
}


variable "location" {
  default = "west europe"
}