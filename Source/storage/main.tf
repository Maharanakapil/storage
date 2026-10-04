resource "azurerm_storage_account" "fb_storage"{
  name =  var.storages.name
  resource_group_name =  var.storages.resource_group_name
  location =  var.storages.location
  account_tier = var.storages.account_tier
  account_replication_type =  var.storages.account_replication_type
  access_tier = var.storages.access_tier
  account_kind = var.storages.account_kind 

}

resource "azurerm_storage_container" "fb_container" {
  name                  = var.storages.container.container_name
 storage_account_id =  data.azurerm_storage_account.storage_id.id
  container_access_type = var.storages.container.container_access_type
}




