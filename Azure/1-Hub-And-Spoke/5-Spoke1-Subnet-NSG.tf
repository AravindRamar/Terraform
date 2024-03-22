#1 --> Spoke Subnet Creation
resource "azurerm_subnet" "spoke1subnet" {
    name = "${var.env}-${var.spoke1-subnet}"
    resource_group_name = azurerm_resource_group.spoke1.name
    virtual_network_name = azurerm_virtual_network.spoke1vnet.name
    address_prefixes = ["10.2.0.0/24"]
}
#2 --> Spoke NSG Association to Subnet
resource "azurerm_subnet_network_security_group_association" "spoke1_subnet_NSG_association" {
    depends_on = [ azurerm_network_security_rule.NSG_inbound_rules ]
    subnet_id = azurerm_subnet.spoke1subnet.id
    network_security_group_id = azurerm_network_security_group.subnet_NSG.id
}