name     = "demorg"
location = "japanwest"

vnetname    = "demovnet"
address_space = ["10.0.0.0/16"]

pipname           = "demopip"
allocation_method = "Static"

snetname         = "demosubnet"
address_prefixes = ["10.0.1.0/24"]

nicname               = "demonic"
ip_configuration_name = "internal"

vmname       = "demovm"
size         = "Standard_D2s_v5"
username     = "patilabhi"
password     = "Abhishek@2026"
password_aut = false
caching      = "ReadWrite"
sa_type      = "Standard_LRS"
publisher    = "Canonical"
offer        = "0001-com-ubuntu-server-jammy"
sku          = "22_04-lts"
version      = "latest"


