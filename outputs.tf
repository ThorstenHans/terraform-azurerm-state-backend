output "storage_account_name" {
  value       = azurerm_storage_account.sa_tf_state.name
  description = "Name of the Azure Storage Account"
}

output "blob_container_name" {
  value       = azurerm_storage_container.sc_tf_state.name
  description = "Name of the Blob container"
}

output "primary_access_key" {
  value       = azurerm_storage_account.sa_tf_state.primary_access_key
  sensitive   = true
  description = "Azure Storage Account - Primary access key"
}

output "secondary_access_key" {
  value       = azurerm_storage_account.sa_tf_state.secondary_access_key
  sensitive   = true
  description = "Azure Storage Account - Secondary access key"
}

output "primary_connection_string" {
  value       = azurerm_storage_account.sa_tf_state.primary_connection_string
  sensitive   = true
  description = "Azure Storage Account - Primary connection string"
}

output "secondary_connection_string" {
  value       = azurerm_storage_account.sa_tf_state.secondary_connection_string
  sensitive   = true
  description = "Azure Storage Account - Secondary connection string"
}

output "primary_blob_connection_string" {
  value       = azurerm_storage_account.sa_tf_state.primary_blob_connection_string
  sensitive   = true
  description = "Azure Storage Account - Primary Blob service connection string"
}

output "secondary_blob_connection_string" {
  value       = azurerm_storage_account.sa_tf_state.secondary_blob_connection_string
  sensitive   = true
  description = "Azure Storage Account - Secondary Blob service connection string"
}
