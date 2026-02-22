resource "azurerm_network_interface" "nic" {
  name                = var.nicname
  location            = var.location
  resource_group_name = var.name

  ip_configuration {
    name                          = var.ip_configuration_name
    subnet_id                     = [module.subnet.id]
    public_ip_address_id          = [module.public_id.id]
    private_ip_address_allocation = var.allocation_method
  }
}



data "azurerm_network_interface" "example" {
  name                = "acctest-nic"
  resource_group_name = "networking"
}

output "network_interface_id" {
  value = data.azurerm_network_interface.example.id
}
