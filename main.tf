# Point 7 : groupe de ressources
resource "azurerm_resource_group" "rg" {
  name     = "rg-cr460-devoir1"
  location = "canadacentral"
}
# Point 8 : réseau virtuel
resource "azurerm_virtual_network" "vnet" {
  name                = "vnet-cr460-devoir1"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "subnet-cr460"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}