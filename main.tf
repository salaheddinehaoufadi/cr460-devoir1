# Point 7 : groupe de ressources
resource "azurerm_resource_group" "rg" {
  name     = "rg-cr460-devoir1"
  location = "canadacentral"
}