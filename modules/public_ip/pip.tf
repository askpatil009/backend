resource "azurerm_public_ip" "pip" {
  name                = var.pipname
  location            = var.location
  resource_group_name = var.name
  allocation_method   = var.allocation_method
}


