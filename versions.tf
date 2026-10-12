terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "cr460-salaheddine"

    workspaces {
      name = "cr460-devoir1"
    }
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
