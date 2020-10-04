# Terraform Module for Azure based State Backend

This module deploys an Azure Storage Account (including Blob container) along with a dedicated Resource Group which can act as Terraform State Backend.

## How to use this module

Although the module can be customized to fit your individual requirements, you can use the module and rely on default configuration values to get up and running quickly:

```terraform
provider "azurerm" {
  features {}
}

module "state_backend" {
  source = "tbd"
  
  resource_group_name  = "rg-tf-state"
  location             = "westeurope"
  storage_account_name = "tfmodteststate"
}

```

Optionally, you can override module's default configuration values:

```terraform
provider "azurerm" {
  features {}
}

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

```

## Module Outputs

The module provides essential outputs, you can use in your projects to configure state backend

- `storage_account_name`
- `primary_access_key` (sensitive)
- `secondary_access_key` (sensitive)
- `primary_connection_string` (sensitive)
- `secondary_connection_string` (sensitive)
- `primary_blob_connection_string` (sensitive)
- `secondary_blob_connection_string` (sensitive)
