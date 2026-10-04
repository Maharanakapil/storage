data "azurerm_storage_account" "storage_id" {
    depends_on = [ azurerm_storage_account.fb_storage ]
  name                = var.storages.name
  resource_group_name = var.storages.resource_group_name
}
