terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.9"
    }
  }
}

provider "azurerm" {
  features {}
}
