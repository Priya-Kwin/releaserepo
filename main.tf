



resource "azurerm_resource_group" "example" {
    name = "diskrg"
    location = "East US"
   
}

resource "azurerm_managed_disk" "example" {
    name ="disk1"
    resource_group_name = azurerm_resource_group.example.name
  location = azurerm_resource_group.example.location
  storage_account_type = "Standard_LRS"
  create_option = "Empty"
  disk_size_gb         = "1"
    tags = {
        environment = "staging"
    }
}