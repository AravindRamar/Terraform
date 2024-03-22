resource "azurerm_virtual_network" "hubvnet" {
    name = "${var.env}-${var.hub-vnet}"
    resource_group_name = azurerm_resource_group.hub.name
    location = azurerm_resource_group.hub.location
    address_space = [ "10.1.0.0/16" ]
    #tags = local.commontags
}

resource "azurerm_virtual_network" "spoke1vnet" {
    name = "${var.env}-${var.spoke1-vnet}"
    resource_group_name = azurerm_resource_group.spoke1.name
    location = azurerm_resource_group.spoke1.location
    address_space = [ "10.2.0.0/16" ]
    #tags = local.commontags
}

resource "azurerm_virtual_network" "spoke2vnet" {
    name = "${var.env}-${var.spoke2-vnet}"
    resource_group_name = azurerm_resource_group.spoke2.name
    location = azurerm_resource_group.spoke2.location
    address_space = [ "10.3.0.0/16" ]
    #tags = local.commontags
}