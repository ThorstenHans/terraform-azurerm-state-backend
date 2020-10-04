module "simple_state_backend" {
  source = "./../"

  resource_group_name  = "rg-tf-state"
  location             = "westeurope"
  storage_account_name = "tfmodteststate"
}
