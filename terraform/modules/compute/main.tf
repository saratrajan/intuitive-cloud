resource "azurerm_virtual_machine" "example" {
  count               = 2
  name                = "example-vm${count.index}"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  vm_size             = var.vm_size
  
  storage_os_disk {
    name              = "osdisk${count.index}"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = var.storage_account_type
  }

  os_profile {
    computer_name  = "hostname${count.index}"
    admin_username = "adminuser"
    admin_password = "Password1234!"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  plan {
    publisher = "Canonical"
    product   = "UbuntuServer"
    name      = "18.04-LTS"
  }

  network_interface_ids = [azurerm_network_interface.example[count.index].id]
}
