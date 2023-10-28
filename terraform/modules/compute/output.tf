output "vm_ids" {
  description = "The IDs of the Virtual Machines."
  value       = [for vm in azurerm_virtual_machine.example : vm.id]
}
