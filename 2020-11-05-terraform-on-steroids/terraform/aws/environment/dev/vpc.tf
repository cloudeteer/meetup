module "vpc" {
  source               = "terraform-aws-modules/vpc/aws"
  version              = "2.63.0"
  name                 = var.demo_name
  cidr                 = var.vpc_cidr
  azs                  = var.availability_zones
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets       = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
  enable_nat_gateway   = true
  enable_dns_hostnames = true
  public_subnet_tags = {
    "kubernetes.io/role/elb"                 = 1
    "kubernetes.io/cluster/${var.demo_name}" = "shared"
  }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb"        = 1
    "kubernetes.io/cluster/${var.demo_name}" = "shared"
  }
  tags = var.tags
}