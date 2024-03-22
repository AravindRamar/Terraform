variable "env" {
  description = "The Environment to deploy the resources"
  type = string
}

variable "location" {
  description = "The locationt to deploy the resources"
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