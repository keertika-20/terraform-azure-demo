resource "azurerm_linux_virtual_machine" "demo_vm" {
  name                = "demo-vm"
  resource_group_name = azurerm_resource_group.demo.name
  location            = azurerm_resource_group.demo.location
  size                = "Standard_B2s"
  admin_username      = "azureuser"

  network_interface_ids = [
    azurerm_network_interface.demo_nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

 source_image_reference {
  publisher = "Canonical"
  offer     = "0001-com-ubuntu-server-focal"
  sku       = "20_04-lts"
  version   = "latest"
}


  admin_ssh_key {
  username   = "azureuser"
  public_key = var.public_key
}
}
