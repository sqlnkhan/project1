terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "saqlainresgrop"
    storage_account_name = "saqlainstrgacc"
    container_name       = "saqlaintfstate"
    key                  = "saqlain.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "febef730-8d0e-4e87-b84a-70939f0ce0e0"
}