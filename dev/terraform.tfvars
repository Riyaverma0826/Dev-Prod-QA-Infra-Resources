rgs = {
  devrg1 = {
    name     = "dev-rvinfra"
    location = "eastus"
  }
}

stgs = {
  devstg1 = {
    name                     = "devrvstg"
    location                 = "eastus"
    resource_group_name      = "dev-rvinfra"
    account_replication_type = "LRS"
    account_tier             = "Standard"
  }
}

vnets = {
  devvnet1 = {
    name                = "dev-rvvnet"
    location            = "eastus"
    resource_group_name = "dev-rvinfra"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
  }
}

subnets = {
  devsubnet1 = {
    name                 = "dev-rvsubnet"
    location             = "eastus"
    virtual_network_name = "dev-rvvnet"
    resource_group_name  = "dev-rvinfra"
    address_prefixes     = ["10.0.0.0/24"]
  }
}