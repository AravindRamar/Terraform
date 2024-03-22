resource "azurerm_network_interface" "hubvmnic" {
  name                = "${var.env}-${var.hubvmnic}"
  location            = data.azurerm_resource_group.hub.location
  resource_group_name = data.azurerm_resource_group.hub.name
  ip_configuration {
    name                          = "primary"
    subnet_id                     = data.azurerm_subnet.hubsubnet.id
    private_ip_address_allocation = "Dynamic"
  }
}
resource "azurerm_windows_virtual_machine" "hubvm" {
  depends_on = [ azurerm_network_interface.hubvmnic ]
  name                = "${var.env}-${var.hubvm}"
  resource_group_name = data.azurerm_resource_group.hub.name
  location            = data.azurerm_resource_group.hub.location
  size                = "Standard_B1s"
  admin_username      = "adminuser"
  admin_password      = "JordanDevOps14!"
  network_interface_ids = [
    azurerm_network_interface.hubvmnic.id,
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