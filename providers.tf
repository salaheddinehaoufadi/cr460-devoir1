provider "azurerm" {
  features {}
  use_oidc = true
}

# Test de connexion : lit les infos de l'abonnement Azure
data "azurerm_subscription" "current" {}

output "abonnement_azure" {
  value = data.azurerm_subscription.current.display_name
}