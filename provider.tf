terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.42.0"
    }
  }
  backend "azurerm" {
  resource_group_name  = "terra-sam"
  storage_account_name = "stgshambhu101"
  container_name       = "samcont"
  key                  = "terraform.tfstate"
}
}

provider "azurerm" {
    features {}
    subscription_id = "177b7e12-5f03-4f63-bcd1-ed6d1d776bff"
}

