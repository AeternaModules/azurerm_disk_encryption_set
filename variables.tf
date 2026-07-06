variable "disk_encryption_sets" {
  description = <<EOT
Map of disk_encryption_sets, attributes below
Required:
    - location
    - name
    - resource_group_name
    - identity (block):
        - identity_ids (optional)
        - type (required)
Optional:
    - auto_key_rotation_enabled
    - encryption_type
    - federated_client_id
    - key_vault_key_id
    - managed_hsm_key_id
    - tags
EOT

  type = map(object({
    location                  = string
    name                      = string
    resource_group_name       = string
    auto_key_rotation_enabled = optional(bool)   # Default: false
    encryption_type           = optional(string) # Default: "EncryptionAtRestWithCustomerKey"
    federated_client_id       = optional(string)
    key_vault_key_id          = optional(string)
    managed_hsm_key_id        = optional(string)
    tags                      = optional(map(string))
    identity = object({
      identity_ids = optional(set(string))
      type         = string
    })
  }))
  validation {
    condition = alltrue([
      for k, v in var.disk_encryption_sets : (
        v.federated_client_id == null || (can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.federated_client_id)))
      )
    ])
    error_message = "must be a valid UUID"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_disk_encryption_set's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.DiskEncryptionSetName] !ok
  # path: name
  #   source:    [from validate.DiskEncryptionSetName] !matched
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] !ok
  # path: key_vault_key_id
  #   source:    [from keyvault.ValidateNestedItemID] err != nil
  # path: encryption_type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.type
  #   source:    validation.StringInSlice value list is not a literal []string - likely a generated PossibleValuesFor*() helper; resolve separately
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] !ok
  # path: identity.identity_ids[*]
  #   source:    [from commonids.ValidateUserAssignedIdentityID] err != nil
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

