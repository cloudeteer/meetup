output "vnet_id" {
  description = "The id of the newly created vNet"
  value       = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  description = "The Name of the newly created vNet"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_location" {
  description = "The location of the newly created vNet"
  value       = azurerm_virtual_network.vnet.location
}

output "vnet_address_space" {
  description = "The address space of the newly created vNet"
  value       = azurerm_virtual_network.vnet.address_space
}

output "subnet_id" {
  description = "The subnet ID"
  value       = azurerm_subnet.subnet.*.id
}

output "subnet_name" {
  description = "The name of the subnet."
  value       = azurerm_subnet.subnet.*.name
}

output "subnet_virtual_network_name" {
  description = "The name of the virtual network in which the subnet is created in."
  value       = azurerm_subnet.subnet.*.virtual_network_name
}
