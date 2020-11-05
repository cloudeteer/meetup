module "eks" {
  source           = "terraform-aws-modules/eks/aws"
  version          = "12.2.0"
  cluster_name     = var.demo_name
  cluster_version  = var.cluster_version
  subnets          = module.vpc.private_subnets
  vpc_id           = module.vpc.vpc_id
  write_kubeconfig = false
  worker_groups = [
    {
      name                 = "worker-nodes"
      asg_desired_capacity = 3
      asg_max_size         = 4
      instance_type        = "t3.large"
    }
  ]
  tags = var.tags
}