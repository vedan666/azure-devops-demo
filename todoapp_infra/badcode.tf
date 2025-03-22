# resource "azurerm_virtual_network" "example" {
#   name                = "example-network"
#   address_space       = ["10.0.0.0/16"]
#   location            = "eastus"
#   resource_group_name = "example-rg"
# }

# resource "azurerm_network_security_group" "example" {
#   name                = "example-nsg"
#   location            = "eastus"
#   resource_group_name = "example-rg"

#   security_rule {
#     name                       = "allow_all_inbound"
#     priority                   = 100
#     direction                  = "Inbound"
#     access                     = "Allow"
#     protocol                   = "*"
#     source_port_range          = "*"
#     destination_port_range     = "*"
#     source_address_prefix      = "*"
#     destination_address_prefix = "*"
#   }
# }

# resource "azurerm_storage_account" "example" {
#   name                     = "examplestoracc" # Hardcoded name
#   resource_group_name      = "example-rg"
#   location                 = "eastus"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = {
#     environment = "dev"
#   }
# }
