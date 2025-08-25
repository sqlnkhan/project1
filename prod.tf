module "calledresourcegrp" {
  source              = "C:/Users/Saqlain Pathan/OneDrive/Desktop/project1/modules/resource group"
  resource_group_names_saqlain = var.resource_group_names_saqlain

}

module "calledstorageacc" {
  source                = "C:/Users/Saqlain Pathan/OneDrive/Desktop/project1/modules/storage account"
  storage_account_names_saqlain = var.storage_account_names_saqlain
  resource_group_names_saqlain   = var.resource_group_names_saqlain

  
}

variable "resource_group_names_saqlain" {
  type = list
}

variable "storage_account_names_saqlain" {
  type = list

}