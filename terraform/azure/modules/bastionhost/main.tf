resource "azurerm_public_ip" "test" {
  name                         = var.pip_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  allocation_method            = var.allocation_method
  sku                          = var.sku
  idle_timeout_in_minutes      = var.idle_timeout_in_minutes
  tags                         = var.tags
}

resource "azurerm_bastion_host" "test" {
  name                         = var.bastion_host_name
  location                     = var.location
  resource_group_name          = var.resource_group_name
  tags                         = var.tags
  ip_configuration {
    name                       = "ipconfig"
    subnet_id                  = var.subnet_id
    public_ip_address_id       = azurerm_public_ip.test.id
  }
}