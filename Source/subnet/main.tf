resource "azurerm_subnet" "subnet" {
  name =  var.subnets.name
  resource_group_name =  var.subnets.resource_group_name
  virtual_network_name =  var.subnets.virtual_network_name
  address_prefixes = var.subnets.address_prefixes
  service_endpoints = var.subnets.service_endpoints 
}