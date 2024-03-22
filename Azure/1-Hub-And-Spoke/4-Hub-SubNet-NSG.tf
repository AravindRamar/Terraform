#1 --> Hub Subnet Creation
resource "azurerm_subnet" "hubsubnet" {
    name = "${var.env}-${var.hub-subnet}"
    resource_group_name = azurerm_resource_group.hub.name
    virtual_network_name = azurerm_virtual_network.hubvnet.name
    address_prefixes = [ "10.1.0.0/24" ]
}

#2 --> Hub NSG Association to Subnet
resource "azurerm_subnet_network_security_group_association" "hub_subnet_NSG_association" {
    depends_on = [ azurerm_network_security_rule.NSG_inbound_rules ]
    subnet_id = azurerm_subnet.hubsubnet.id
    network_security_group_id = azurerm_network_security_group.subnet_NSG.id
}