terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.3.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "idhere"
  features {}
}

resource "azurerm_resource_group" "CloudComputing" {
  name     = "CloudComputing"
  location = "France Central"
  tags = {
    "hello" = "world"
  }
}
