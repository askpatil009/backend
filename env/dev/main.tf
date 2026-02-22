module "resource_group" {
  source   = "../../modules/resource_group"
  var = 
}


module "virtual_network" {
  source              = "../../modules/virtual.network"
  depends_on          = [module.resource_group]
  name                = var.vnetname
  location            = var.location
  resource_group_name = var.name
  address_space       = var.address_space
}

module "public_ip" {
  source              = "../../modules/public_ip"
  depends_on          = [module.resource_group]
  name                = var.pipname
  location            = var.location
  resource_group_name = var.name
  allocation_method   = var.allocation_method
}

module "subnet" {
  source = "../../modules/subnet"
  depends_on = [module.virtual_network , module]
}




