data "azurerm_resource_group" "hub" {
    name = "${var.env}-${var.hub-rg}"
}

data "azurerm_resource_group" "spoke1" {
    name = "${var.env}-${var.spoke1-rg}"
}

data "azurerm_resource_group" "spoke2" {
    name = "${var.env}-${var.spoke1-rg}"
}

data "azurerm_subnet" "hubsubnet" {
    name = "${var.env}-${var.hub-subnet}"
    resource_group_name = "${var.env}-${var.hub-rg}"
    virtual_network_name = "${var.env}-${var.hub-vnet}"
}

data "azurerm_subnet" "spoke1subnet" {
    name = "${var.env}-${var.spoke1-subnet}"
    resource_group_name = "${var.env}-${var.spoke1-rg}"
    virtual_network_name = "${var.env}-${var.spoke1-vnet}"
}

data "azurerm_subnet" "spoke2subnet" {
    name = "${var.env}-${var.spoke2-subnet}"
    resource_group_name = "${var.env}-${var.spoke2-rg}"
    virtual_network_name = "${var.env}-${var.spoke2-vnet}"
}

data "azurerm_network_security_group" "subnet_NSG" {
    name = "${var.env}-${var.nsg-name}"
    resource_group_name = "${var.env}-${var.hub-rg}"
}