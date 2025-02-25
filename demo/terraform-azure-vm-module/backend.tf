terraform {
  backend "azurerm" {
    resource_group_name  = "test-cloudtech"
    storage_account_name = "statestiaac01"
    container_name       = "statefile01"
    key                  = "VM-Win/vm-win.tfstate"
  }
}
