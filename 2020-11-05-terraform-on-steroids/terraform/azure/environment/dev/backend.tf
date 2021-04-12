terraform {
  backend "azurerm" {
    storage_account_name = "azureTerraformStorageAccount"
    container_name       = "azureTerraformStorageContainerName"
    access_key           = "accesskey"
    key                  = "cdt-demo.tfstate"
  }
}

# note : please adjust these variables acoordingly or you could set them as environment variables as well