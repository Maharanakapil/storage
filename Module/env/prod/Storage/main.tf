module "rg" {
  source = "../../../../Source/rg"
  rgs    = var.rgm
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../../../Source/vnet"
  vnets      = var.vnetm
}

module "subnet" {
  depends_on = [module.vnet]
  source     = "../../../../Source/subnet"
  subnets    = var.subnetm
}

module "storage" {
  depends_on = [module.subnet]
  source     = "../../../../Source/storage"
  storages   = var.storagem
}


