variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "prefix" {
  type        = string
  description = "Prefix for all resource names"
}
variable "tags" {
  description = "Tags to apply to networking resources"
  type        = map(string)
}
