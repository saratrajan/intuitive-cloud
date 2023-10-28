variable "storage_account_type" {
  description = "The type of storage account."
  default     = "Premium_LRS"
}

variable "disk_size_gb" {
  description = "The size of the managed disk in GB."
  default     = "20"
}
