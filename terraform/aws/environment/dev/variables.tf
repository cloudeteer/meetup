variable "tags" {
  description = "A map of tags to add to all resources"
  type        = map(string)
  default = {
    environment = "Development"
    owner       = "Cloudeteer"
    costcenter  = "10001"
    project     = "OPpsStack"
    sre-type    = "Sre-Terraform"
    sre-team    = "Cdt-Sre"
  }
}