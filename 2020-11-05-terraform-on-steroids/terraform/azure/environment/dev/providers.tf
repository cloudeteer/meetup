terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.25.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "~> 0.10.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 2.2.1"
    }
    null = {
      source  = "hashicorp/null"
      version = "~> 2.1.0"
    }
  }
  required_version = ">= 0.13"
}

provider "azurerm" {
  features {}
}