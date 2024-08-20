variable "region" {
  description = "AWS region"
  type        = string
}

variable "ami_filter_name" {
  description = "AMI filter name"
  type        = list(string)
}

variable "ami_filter_virtualization_type" {
  description = "AMI filter virtualization type"
  type        = list(string)
}

variable "ami_owners" {
  description = "AMI owners"
  type        = list(string)
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
}

variable "vpc_cidr_block" {
  description = "VPC CIDR block"
  type        = string
}

variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "subnet_cidr_block" {
  description = "Subnet CIDR block"
  type        = string
}

variable "subnet_availability_zone" {
  description = "Subnet availability zone"
  type        = string
}

variable "nic_name" {
  description = "NIC name"
  type        = string
}

variable "instance_name" {
  description = "Instance name"
  type        = string
}

variable "instance_type" {
  description = "Instance type"
  type        = string
}

