output "disk_encryption_sets" {
  description = "All disk_encryption_set resources"
  value       = azurerm_disk_encryption_set.disk_encryption_sets
}
output "disk_encryption_sets_auto_key_rotation_enabled" {
  description = "List of auto_key_rotation_enabled values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.auto_key_rotation_enabled]
}
output "disk_encryption_sets_encryption_type" {
  description = "List of encryption_type values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.encryption_type]
}
output "disk_encryption_sets_federated_client_id" {
  description = "List of federated_client_id values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.federated_client_id]
}
output "disk_encryption_sets_identity" {
  description = "List of identity values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.identity]
}
output "disk_encryption_sets_key_vault_key_id" {
  description = "List of key_vault_key_id values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.key_vault_key_id]
}
output "disk_encryption_sets_key_vault_key_url" {
  description = "List of key_vault_key_url values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.key_vault_key_url]
}
output "disk_encryption_sets_location" {
  description = "List of location values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.location]
}
output "disk_encryption_sets_managed_hsm_key_id" {
  description = "List of managed_hsm_key_id values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.managed_hsm_key_id]
}
output "disk_encryption_sets_name" {
  description = "List of name values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.name]
}
output "disk_encryption_sets_resource_group_name" {
  description = "List of resource_group_name values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.resource_group_name]
}
output "disk_encryption_sets_tags" {
  description = "List of tags values across all disk_encryption_sets"
  value       = [for k, v in azurerm_disk_encryption_set.disk_encryption_sets : v.tags]
}

