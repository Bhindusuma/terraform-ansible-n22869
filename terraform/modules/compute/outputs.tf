output "vm1_public_ip" {
  description = "Public IP of VM1"
  value       = azurerm_public_ip.pip[0].ip_address
}
output "vm_ids" {
  value = azurerm_linux_virtual_machine.vm[*].id
}

output "vm_names" {
  value = azurerm_linux_virtual_machine.vm[*].name
}

output "vm_public_ips" {
  value = azurerm_public_ip.pip[*].ip_address
}

output "nic_ids" {
  value = azurerm_network_interface.nic[*].id
}
output "public_ip_ids" {
  value = azurerm_public_ip.pip[*].id
}
output "public_ip_addresses" {
  value = azurerm_public_ip.pip[*].ip_address
}
