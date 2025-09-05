module "rgs" {
  source   = "../module/resource_group"
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}

module "stgs" {
  source                   = "../module/storage_account"
  for_each                 = var.stgs
  depends_on               = [module.rgs]
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}

module "vnets" {
  source              = "../module/virtual_network"
  for_each            = var.vnets
  depends_on          = [module.rgs]
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers
}


module "subnets" {
  source               = "../module/subnet"
  for_each             = var.subnets
  depends_on           = [module.vnets]
  name                 = each.value.name
  location             = each.value.location
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
  address_prefixes     = each.value.address_prefixes

}