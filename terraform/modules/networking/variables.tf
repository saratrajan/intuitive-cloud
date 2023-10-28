variable "resource_group_name" {
  description = "The name of the resource group."
  default     = "intuitive-resources"
}

variable "location" {
  description = "The Azure location for resources."
  default     = "East US"
}

variable "vnet_address_space" {
  description = "The address space for the virtual network."
  default     = ["10.0.0.0/16"]
}

variable "subnet_prefixes" {
  description = "The address prefixes for the subnet."
  default     = ["10.0.1.0/24"]
}
