resource "azurerm_storage_account" "saqlainstorageaccount1" {
  for_each                 = { for index, value in var.storage_account_names_saqlain : index => value }
  name                     = var.storage_account_names_saqlain[each.key]
  resource_group_name      = var.resource_group_names_saqlain[each.key]
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

variable "storage_account_names_saqlain" {
  type = list

}

variable "resource_group_names_saqlain" {
  type = list

}