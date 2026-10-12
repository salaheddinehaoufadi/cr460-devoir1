provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy    = true
      recover_soft_deleted_key_vaults = true
    }
  }
  use_oidc = true
}

# Identité utilisée par Terraform (pour l'accès au Key Vault)
data "azurerm_client_config" "current" {}

# Test de connexion : lit les infos de l'abonnement Azure
data "azurerm_subscription" "current" {}

output "abonnement_azure" {
  value = data.azurerm_subscription.current.display_name
}