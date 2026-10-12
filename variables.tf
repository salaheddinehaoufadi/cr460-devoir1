# Point 11 : paramétrisation du déploiement

variable "location" {
  description = "Région Azure du déploiement"
  type        = string
  default     = "canadacentral"
}

variable "resource_group_name" {
  description = "Nom du groupe de ressources"
  type        = string
  default     = "rg-cr460-devoir1"
}

variable "vnet_name" {
  description = "Nom du réseau virtuel"
  type        = string
  default     = "vnet-cr460-devoir1"
}

variable "subnet_name" {
  description = "Nom du sous-réseau"
  type        = string
  default     = "subnet-cr460"
}

variable "vm_name" {
  description = "Nom de la machine virtuelle"
  type        = string
  default     = "vm-cr460"
}

variable "vm_size" {
  description = "Taille de la machine virtuelle"
  type        = string
  default     = "Standard_B2pts_v2"
}

variable "container_name" {
  description = "Nom du groupe de containers"
  type        = string
  default     = "aci-cr460"
}

variable "nic_name" {
  description = "Nom de la carte réseau de la VM"
  type        = string
  default     = "nic-cr460-vm"
}

variable "portal_user_object_id" {
  description = "Object ID de mon compte, pour voir le secret dans le portail"
  type        = string
  default     = "8f6f30a1-ab1c-4089-866c-5cff0e5f8685"
}

variable "key_vault_name" {
  description = "Nom du Key Vault (unique dans tout Azure)"
  type        = string
  default     = "kv-cr460-salaheddine"
}

# Point 13 : tag de gestion des coûts
variable "tags" {
  description = "Tags appliqués à toutes les ressources"
  type        = map(string)
  default = {
    Projet = "DevoirCR460"
  }
}

variable "acr_name" {
  description = "Nom de l'Azure Container Registry (lettres et chiffres uniquement, unique dans Azure)"
  type        = string
  default     = "acrcr460salaheddine"
}

variable "image_name" {
  description = "Nom de l'image Docker dans l'ACR"
  type        = string
  default     = "cr460-app"
}