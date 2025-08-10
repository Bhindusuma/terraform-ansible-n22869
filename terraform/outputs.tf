output "vm1_public_ip" {
  description = "Public IP of VM1"
  value       = module.compute.vm1_public_ip
}
output "public_ips" {
  value = module.compute.public_ip_addresses
}

output "vm_ids" {
  value = module.compute.vm_ids
}

output "nic_ids" {
  value = module.compute.nic_ids
}

output "subnet_ids" {
  value = module.networking.subnet_ids
}

output "vnet_name" {
  value = module.networking.vnet_name
}

output "lb_public_ip_id" {
  value = module.loadbalancer.lb_public_ip_id
}

output "backend_address_pool_id" {
  value = module.loadbalancer.backend_address_pool_id
}
output "lb_nat_rule_ports" {
  value = module.networking.lb_nat_rule_ports
}
output "lb_public_ip" {
  value = module.loadbalancer.lb_public_ip_address
}
output "lb_fqdn" {
  value = module.loadbalancer.lb_public_ip_fqdn
}
