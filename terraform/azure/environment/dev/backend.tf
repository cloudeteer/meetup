terraform {
  backend "azurerm" {
    storage_account_name = "azureTerraformStorageAccount"
    container_name       = "azureTerraformStorageContainerName"
    access_key           = "accesskey"
    key                  = "cdt-demo.tfstate"
  }
}