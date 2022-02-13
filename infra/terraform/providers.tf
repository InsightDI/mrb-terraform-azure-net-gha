terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.9"
    }

  cloud {
    organization = "mbraunwart-test"

    workspaces {
      name = "tf-demo-dev"
    }
  }
  }
}

provider "azurerm" {
  features {}
}
