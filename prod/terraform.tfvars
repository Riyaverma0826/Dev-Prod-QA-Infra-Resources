rgs = {
  prodrg1 = {
    name     = "prod-rvinfra"
    location = "centralindia"
  }
}

stgs = {
  prodstg1 = {
    name                     = "prodrvstg"
    location                 = "centralindia"
    resource_group_name      = "prod-rvinfra"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnets = {
  prodvnet1 = {
    name                = "prod-rvvnet"
    location            = "centralindia"
    resource_group_name = "prod-rvinfra"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  prodsubnet1 = {
    name                 = "prod-rvsubnet"
    location             = "centralindia"
    virtual_network_name = "prod-rvvnet"
    resource_group_name  = "prod-rvinfra"
    address_prefixes     = ["10.0.0.0/24"]
  }
}