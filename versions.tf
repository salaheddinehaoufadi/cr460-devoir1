terraform {
  required_version = ">= 1.6.0"

  cloud {
    organization = "cr460-salaheddine"

    workspaces {
      name = "cr460-devoir1"
    }
  }
}