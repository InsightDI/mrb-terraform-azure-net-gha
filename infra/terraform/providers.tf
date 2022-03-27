terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3"
    }
  }

  cloud {
    organization = "mbraunwart-test"

    workspaces {
      name = "tf-demo-#{environment}#"
      # name = "tf-demo-dev"
    }
  }
}

provider "azurerm" {
  features {}
}
