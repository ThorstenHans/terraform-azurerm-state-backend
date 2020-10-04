variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource Group"
}

variable "location" {
  type        = string
  description = "Azure Region where services should be created"
}

variable "tags" {
  type        = map
  default     = {}
  description = "A map of Azure tags, assoicated with all created resources"
}

variable "create_lock" {
  type        = bool
  default     = true
  description = "Should an Azure Management Lock being created?"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the Azure Storage Account"
}

variable "storage_container_name" {
  type        = string
  default     = "terraform-state"
  description = "Name of the Blob container (defaults to terraform-state)"
}

variable "storage_account_tier" {
  type        = string
  default     = "Standard"
  description = "Azure Storage Account Tier (defaults to Standard)"
}

variable "storage_account_replication_type" {
  type        = string
  default     = "LRS"
  description = "Azure Storage Account Replication Type (defaults to LRS)"
}

variable "storage_account_access_tier" {
  type        = string
  default     = "Hot"
  description = "Azure STorage Account Access Tier (defaults to Hot)"
}

variable "storage_container_access_type" {
  type        = string
  default     = "private"
  description = "Blob Container Access Type (defaults to private)"
}
