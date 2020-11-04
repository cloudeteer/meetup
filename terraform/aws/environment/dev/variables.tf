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


variable "demo_name" {
  type        = string
  description = "Vpc Name for this meetup demo"
  default     = "cdtdemo-test"
}

variable "region" {
  type        = string
  description = "AWS US-based Region that will be used in this demo."
  default     = "eu-central-1"
}

variable "availability_zones" {
  type        = list(string)
  description = "Availability zones that will be used in this demo."
  default     = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
}

variable "cluster_version" {
  type        = string
  description = "The Kubernetes version for our clusters"
  default     = "1.17"
}

variable "vpc_cidr" {
  type        = string
  description = "The CIDR block to use for this demo"
  default     = "10.0.0.0/16"
}