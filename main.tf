
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.46.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
subscription_id: d8545a7b-b1b2-4468-a93d-5203ee3b0bb3
tenant_id: e14e73eb-5251-4388-8d67-8f9f2e2d5a46
client_id: 70354295-3c25-407b-a84a-025e23e4c605
client_secret:  mKx90_1iuE-ro-yOepQXmjC3F_~Ul6X8Wx
}


resource "azurerm_resource_group" "example" {
  name     = "nikhilrgg"
  location = "eastus"
}
