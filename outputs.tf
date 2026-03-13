output "resource_group_id" {
  value = azurerm_resource_group.demo.id
}

output "vm_public_ip" {
  value = azurerm_public_ip.demo_pip.ip_address
}
