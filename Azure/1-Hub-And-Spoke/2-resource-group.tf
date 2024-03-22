resource "azurerm_resource_group" "hub" {
    name = "${var.env}-${var.hub-rg}"
    location = "${var.location}"
    # tags = local.commontags
}

resource "azurerm_resource_group" "spoke1" {
    name = "${var.env}-${var.spoke1-rg}"
    location = "${var.location}"
    # tags = local.commontags
}

resource "azurerm_resource_group" "spoke2" {
    name = "${var.env}-${var.spoke2-rg}"
    location = "${var.location}"
    # tags = local.commontags
}