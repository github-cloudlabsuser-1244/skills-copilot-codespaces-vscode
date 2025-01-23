provider "azurerm" {
  features {}
  subscription_id = "9ec77024-c339-482c-a901-b695e05a5ed6"
}

resource "azurerm_resource_group" "example" {
  name     = "JumpVM-RG-1576896"
  location = "East US 2"
}

resource "azurerm_storage_account" "example" {
  name                     = "storagenew 1576896"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "Terraform"
  }
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "The location/region where the resources will be created"
  type        = string
  default     = "eastus"
}

variable "storage_account_name" {
  description = "The name of the storage account"
  type        = string
  default     = "examplestorageacct"
}

variable "account_tier" {
  description = "The tier of the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type of the storage account"
  type        = string
  default     = "LRS"
}