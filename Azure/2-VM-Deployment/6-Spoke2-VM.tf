resource "azurerm_network_interface" "spoke2vmnic" {
  name                = "${var.env}-${var.spoke2vmnic}"
  location            = data.azurerm_resource_group.spoke2.location
  resource_group_name = data.azurerm_resource_group.spoke2.name
  ip_configuration {
    name                          = "primary"
    subnet_id                     = data.azurerm_subnet.spoke2subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "spoke2vm" {
  depends_on = [ azurerm_network_interface.spoke2vmnic ]
  name                = "${var.env}-${var.spoke2vm}"
  resource_group_name = data.azurerm_resource_group.spoke2.name
  location            = data.azurerm_resource_group.spoke2.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "JordanDevOps14!"
  network_interface_ids = [
    azurerm_network_interface.spoke2vmnic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2016-Datacenter"
    version   = "latest"
  }
}