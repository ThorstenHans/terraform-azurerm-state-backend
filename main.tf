locals {
  default_tags = {
    scope = "Terraform"
  }
  all_tags = merge(local.default_tags, var.tags)
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
  tags     = local.all_tags
}

resource "azurerm_management_lock" "rg_lock" {
  name       = "${var.resource_group_name}-lock"
  scope      = azurerm_resource_group.rg.id
  lock_level = var.lock_level
}

resource "azurerm_storage_account" "sa_tf_state" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = var.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
  access_tier              = var.storage_account_access_tier
  tags                     = local.all_tags
}

resource "azurerm_storage_container" "sc_tf_state" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.sa_tf_state.name
  container_access_type = var.storage_container_access_type
}
