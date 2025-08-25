resource "azurerm_resource_group" "saqlainresgrp1" {
  for_each = { for index, value in var.resource_group_names_saqlain : index => value }
  name     = each.value
  location = "East US"
}




variable "resource_group_names_saqlain" {
  type = list(string)

}