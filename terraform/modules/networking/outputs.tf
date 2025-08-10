output "nsg_id" {
  value = azurerm_network_security_group.nsg.id
}
output "subnet_ids" {
  description = "IDs of the created subnets"
  value       = azurerm_subnet.subnets[*].id
}

output "lb_public_ip" {
  description = "Public IP address of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}
output "lb_nat_rule_ports" {
  value = azurerm_lb_nat_rule.ssh_nat_rule[*].frontend_port
}
