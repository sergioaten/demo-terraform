variable "resource_group_name" {
  description = "Azure resource group name"
  type        = string
}

variable "location" {
  description = "Azure location"
  type        = string
}

variable "vnet_name" {
  description = "VNet name"
  type        = string
}

variable "vnet_cidr_block" {
  description = "VNet CIDR block"
  type        = list(string)
}

variable "snet_name" {
  description = "Subnet name"
  type        = string
}

variable "snet_cidr_block" {
  description = "Subnet CIDR block"
  type        = string
}

variable "nic_name" {
  description = "NIC name"
  type        = string
}

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "vm_size" {
  description = "VM size"
  type        = string
}

variable "vm_username" {
  description = "Admin username"
  type        = string
}

variable "vm_password" {
  description = "Admin password"
  type        = string
}

variable "vm_publisher" {
  description = "VM publisher"
  type        = string
}

variable "vm_offer" {
  description = "VM offer"
  type        = string
}

variable "vm_sku" {
  description = "VM SKU"
  type        = string
}

