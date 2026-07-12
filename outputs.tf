output "disk_encryption_sets_id" {
  description = "Map of id values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.id }
}
output "disk_encryption_sets_auto_key_rotation_enabled" {
  description = "Map of auto_key_rotation_enabled values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.auto_key_rotation_enabled }
}
output "disk_encryption_sets_encryption_type" {
  description = "Map of encryption_type values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.encryption_type }
}
output "disk_encryption_sets_federated_client_id" {
  description = "Map of federated_client_id values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.federated_client_id }
}
output "disk_encryption_sets_identity" {
  description = "Map of identity values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.identity }
}
output "disk_encryption_sets_key_vault_key_id" {
  description = "Map of key_vault_key_id values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.key_vault_key_id }
}
output "disk_encryption_sets_key_vault_key_url" {
  description = "Map of key_vault_key_url values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.key_vault_key_url }
}
output "disk_encryption_sets_location" {
  description = "Map of location values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.location }
}
output "disk_encryption_sets_managed_hsm_key_id" {
  description = "Map of managed_hsm_key_id values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.managed_hsm_key_id }
}
output "disk_encryption_sets_name" {
  description = "Map of name values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.name }
}
output "disk_encryption_sets_resource_group_name" {
  description = "Map of resource_group_name values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.resource_group_name }
}
output "disk_encryption_sets_tags" {
  description = "Map of tags values across all disk_encryption_sets, keyed the same as var.disk_encryption_sets"
  value       = { for k, v in azurerm_disk_encryption_set.disk_encryption_sets : k => v.tags }
}

