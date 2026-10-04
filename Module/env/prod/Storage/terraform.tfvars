rgm = {
  name     = "rg-fb-prod-ci-01"
  location = "central india"
}

vnetm = {
  name                = "vnet-fb-prod-ci-01"
  address_space       = ["172.169.0.0/22"]
  resource_group_name = "rg-fb-prod-ci-01"
  location            = "central india"
}

subnetm = {
  name                 = "subnet-fb-prod-ci-01"
  resource_group_name  = "rg-fb-prod-ci-01"
  virtual_network_name = "vnet-fb-prod-ci-01"
  address_prefixes     = ["172.169.0.0/24"]
  service_endpoints    = ["Microsoft.Sql", "Microsoft.Storage"]
}

storagem = {

  name                      = "fbstoragetest6592"
  resource_group_name       = "rg-fb-prod-ci-01"
  location                  = "central india"
  account_tier              = "Standard"
  account_replication_type  = "LRS"
  subnet_name               = "subnet-fb-prod-ci-01"
  virtual_network_name      = "vnet-fb-prod-ci-01"
  account_kind              = "StorageV2"
  access_tier              = "Hot"
  enable_https_traffic_only = true

  container = {
    container_name        = "fbcn"
    container_access_type = "blob"
  }

}



