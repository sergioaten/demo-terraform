resource_group_name = "demo-rg"
location            = "westus"

vnet_name       = "demo-vnet"
vnet_cidr_block = ["10.0.0.0/24"]

snet_name       = "demo-snet"
snet_cidr_block = "10.0.0.0/27"

nic_name = "demo-nic"

vm_name      = "demo-vm"
vm_size      = "Standard_B1s"
vm_username  = "adminuser"
vm_password  = "P@ssw0rd2024!1234" # This is a bad practice, but for demo purposes it's fine
vm_publisher = "MicrosoftWindowsServer"
vm_offer     = "WindowsServer"
vm_sku       = "2019-Datacenter"
