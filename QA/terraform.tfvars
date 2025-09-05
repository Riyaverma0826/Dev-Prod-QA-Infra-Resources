rgs = {
  qarg1 = {
    name     = "qa-rvinfra"
    location = "westus"
  }
}

stgs = {
  qastg1 = {
    name                     = "qarvstg"
    location                 = "westus"
    resource_group_name      = "qa-rvinfra"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnets = {
  qavnet1 = {
    name                = "qa-rvvnet"
    location            = "westus"
    resource_group_name = "qa-rvinfra"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  qasubnet1 = {
    name                 = "qa-rvsubnet"
    location             = "westus"
    virtual_network_name = "qa-rvvnet"
    resource_group_name  = "qa-rvinfra"
    address_prefixes     = ["10.0.0.0/24"]
  }
}