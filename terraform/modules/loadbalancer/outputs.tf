output "backend_address_pool_id" {
  value = azurerm_lb_backend_address_pool.bepool.id
}

output "lb_public_ip_id" {
  value = azurerm_lb.lb.frontend_ip_configuration[0].public_ip_address_id
}

output "lb_nat_rule_ports" {
  value = azurerm_lb_nat_rule.ssh_nat_rule[*].frontend_port
}
output "lb_public_ip_address" {
  description = "The actual IP address of the Load Balancer"
  value       = azurerm_public_ip.lb_public_ip.ip_address
}
output "lb_public_ip_fqdn" {
  value = azurerm_public_ip.lb_public_ip.fqdn
}
