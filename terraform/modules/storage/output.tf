output "managed_disk_ids" {
  description = "The IDs of the Managed Disks."
  value       = [for disk in azurerm_managed_disk.example : disk.id]
}

output "storage_account_primary_access_key" {
  description = "The primary access key for the Storage Account."
  value       = azurerm_storage_account.example.primary_access_key
  sensitive   = true
}
