output "primary_access_key" {
  value     = azurerm_storage_account.sa_tf_state.primary_access_key
  sensitive = true
}

output "secondary_access_key" {
  value     = azurerm_storage_account.sa_tf_state.secondary_access_key
  sensitive = true
}

output "storage_account_name" {
  value = azurerm_storage_account.sa_tf_state.name
}

output "primary_connection_string" {
  value     = azurerm_storage_account.sa_tf_state.primary_connection_string
  sensitive = true
}

output "secondary_connection_string" {
  value     = azurerm_storage_account.sa_tf_state.secondary_connection_string
  sensitive = true
}

output "primary_blob_connection_string" {
  value     = azurerm_storage_account.sa_tf_state.primary_blob_connection_string
  sensitive = true
}

output "secondary_blob_connection_string" {
  value     = azurerm_storage_account.sa_tf_state.secondary_blob_connection_string
  sensitive = true
}
