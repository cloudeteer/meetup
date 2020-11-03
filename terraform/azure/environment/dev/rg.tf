module "RG" {
  source          = "../../modules/resourcegroup"
  resource_groups = var.resource_groups
  tags            = var.tags
}