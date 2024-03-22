resource "azurerm_virtual_network_peering" "peering-1" {
  name                      = "hub-to-spoke1"
  resource_group_name       = azurerm_resource_group.hub.name
  virtual_network_name      = azurerm_virtual_network.hubvnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke1vnet.id
}

resource "azurerm_virtual_network_peering" "peering-2" {
  name                      = "spoke1-to-hub"
  resource_group_name       = azurerm_resource_group.spoke1.name
  virtual_network_name      = azurerm_virtual_network.spoke1vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hubvnet.id
}

resource "azurerm_virtual_network_peering" "peering-3" {
  name                      = "hub-to-spoke2"
  resource_group_name       = azurerm_resource_group.hub.name
  virtual_network_name      = azurerm_virtual_network.hubvnet.name
  remote_virtual_network_id = azurerm_virtual_network.spoke2vnet.id
}

resource "azurerm_virtual_network_peering" "peering-4" {
  name                      = "spoke2-to-hub"
  resource_group_name       = azurerm_resource_group.spoke2.name
  virtual_network_name      = azurerm_virtual_network.spoke2vnet.name
  remote_virtual_network_id = azurerm_virtual_network.hubvnet.id
}