variable "location" {
  description = "Azure region to deploy resources"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "n22869-rg"
}

variable "prefix" {
  description = "Prefix for resource naming"
  type        = string
  default     = "n22869"
}

variable "admin_username" {
  description = "Admin username for VMs"
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "Admin password for VMs"
  type        = string
  default     = "P@ssword1234!"
}
variable "tags" {
  description = "Tags to be applied to all resources"
  type        = map(string)
  default = {
    Project        = "CCGC 5502 Automation Project"
    Name           = "bhindusuma.daruvuri"
    ExpirationDate = "2024-12-31"
    Environment    = "Project"
  }
}
