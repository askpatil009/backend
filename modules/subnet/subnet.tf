resource "azurerm_subnet" "snet" {
  name                 = var.snetname
  resource_group_name  = var.name
  virtual_network_name = var.vnetname
  address_prefixes     = var.address_prefixes
}


