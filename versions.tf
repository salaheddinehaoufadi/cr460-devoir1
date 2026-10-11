terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "TON-ORGANISATION"

    workspaces {
      name = "cr460-devoir1"
    }
  }
}