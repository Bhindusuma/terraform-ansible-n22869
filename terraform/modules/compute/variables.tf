variable "nsg_id" {
  description = "NSG ID to associate with NICs"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region"
  type        = string
}

variable "prefix" {
  description = "Prefix for naming resources"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VMs"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VMs"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs"
  type        = list(string)
}

variable "tags" {
  description = "Common tags to be applied to resources"
  type        = map(string)
}
variable "backend_address_pool_id" {
  description = "Backend pool ID of the load balancer"
  type        = string
}
