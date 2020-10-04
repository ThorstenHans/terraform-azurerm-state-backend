module "complex_state_backend" {
  source = "./.."

  # Configure Azure Resource Group
  resource_group_name = "complex-tf-state"

  # Configure Azure Storage Account
  storage_account_name             = "complextfstate"
  storage_account_tier             = "Standard"
  storage_account_replication_type = "GRS"
  storage_account_access_tier      = "Hot"

  # Configure Azure Blob Container
  storage_container_name        = "complex-state"
  storage_container_access_type = "private"

  # Azure Management Lock
  create_lock = true
  lock_level  = "ReadOnly"

  # Configuration values applied to all resources
  location = "westeurope"
  tags = {
    project     = "Complex Sample Project",
    responsible = "Thorsten Hans"
  }


}
