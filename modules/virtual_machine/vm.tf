resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vmname
  location              = var.location
  resource_group_name   = var.name
  network_interface_ids = [module.network_interface.id]

  size                            = var.size
  admin_username                  = var.username
  admin_password                  = var.password
  disable_password_authentication = var.password_aut

  os_disk {
    caching              = var.caching
    storage_account_type = var.sa_type
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.sku
    version   = var.version
  }
}


