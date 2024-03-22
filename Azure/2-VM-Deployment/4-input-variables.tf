variable "env" {
  description = "The Environment to deploy the resources"
  type = string
}

variable "location" {
  description = "The location where the resources get created"
  type = string
}

variable "hubvmnic" {
  description = "The NIC Card of the Hub VM"
  type = string
}

variable "spoke1vmnic" {
  description = "The NIC Card of the Hub VM"
  type = string
}

variable "spoke2vmnic" {
  description = "The NIC Card of the Hub VM"
  type = string
}
variable "hub-rg" {
  description = "Name of the Hub Resource Group"
  type = string
}

variable "spoke1-rg" {
  description = "Name of the spoke 1 Resource Group"
  type = string
}

variable "spoke2-rg" {
  description = "Name of the spoke 2 Resource Group"
  type = string
}

variable "hub-vnet" {
  description = "Name of the Hub VNET"
  type = string
}

variable "spoke1-vnet" {
  description = "Name of the spoke 1 VNET"
  type = string
}

variable "spoke2-vnet" {
  description = "Name of the spoke 2 VNET"
  type = string
}

variable "hub-subnet" {
  description = "Name of the HUB Subnet"
  type = string
}

variable "spoke1-subnet" {
  description = "Name of the spoke 1 Subnet"
  type = string
}

variable "spoke2-subnet" {
  description = "Name of the spoke 2 Subnet"
  type = string
}

variable "nsg-name" {
  description = "Name of the NSG"
  type = string
}

variable "hubvm" {
  description = "Name of the HUB VM"
  type = string
}

variable "spoke1vm" {
  description = "Name of the Spoke1 VM"
  type = string
}

variable "spoke2vm" {
  description = "Name of the Spoke2 VM"
  type = string
}
