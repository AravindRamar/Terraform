#1 --> Hub NSG Creation
resource "azurerm_network_security_group" "subnet_NSG" {
    name = "${var.env}-${var.nsg-name}"
    resource_group_name = azurerm_resource_group.hub.name
    location = azurerm_resource_group.hub.location
}

#2 --> Hub NSG Rules

locals {
  NSG_inbound_ports = {
    "100" : "80"
    "105" : "22"
    "110" : "443"
    "120" : "3389"
  }
}

resource "azurerm_network_security_rule" "NSG_inbound_rules" {
    for_each = local.NSG_inbound_ports
    name                        = "Rule-${each.key}"
    priority                    = each.key
    direction                   = "Inbound"
    access                      = "Allow"
    protocol                    = "Tcp"
    source_port_range           = "*"
    destination_port_range      = each.value
    source_address_prefix       = "*"
    destination_address_prefix  = "*"
    resource_group_name         = azurerm_resource_group.hub.name
    network_security_group_name = azurerm_network_security_group.subnet_NSG.name
}