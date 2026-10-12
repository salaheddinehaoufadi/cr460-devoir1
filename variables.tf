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