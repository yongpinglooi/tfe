
resource "azurerm_virtual_machine" "vm" {
  name                  = "${var.vm_name}"
  location              = "${var.location}"
  resource_group_name   = "${var.resource_group_name}"
  network_interface_ids = ["${var.nic_id}"]
  vm_size               = "${var.vm_size}"

# Uncomment this line to delete the OS disk automatically when deleting the VM
  delete_os_disk_on_termination = "${var.delete_os_disk_on_termination}"

# Uncomment this line to delete the data disks automatically when deleting the VM
  delete_data_disks_on_termination = "${var.delete_data_disks_on_termination}"

  #   storage_image_reference {
  #   id                = "${var.id}"
  # }

  storage_image_reference {
    publisher = "${var.vm_publisher}"
    offer     = "${var.vm_offer}"
    sku       = "${var.vm_sku}"
    version   = "${var.vm_version}"
  }

  storage_os_disk {
    name              = "${var.vm_name}-os-disk"
    caching           = "${var.vm_os_caching}"
    create_option     = "${var.vm_os_create_option}"
    managed_disk_type = "${var.vm_os_managed_disk_type}"
    disk_size_gb      = "${var.vm_os_disk_size}"
    os_type           = "${var.vm_os_type}"
  }

  // Managed Disk..
  storage_data_disk {
    name              = "${var.vm_name}-data-disk"
    managed_disk_type = "${var.vm_data_managed_disk_type}"
    create_option     = "${var.vm_data_create_option}"
    lun               = "${var.vm_data_lun}"
    disk_size_gb      = "${var.vm_data_disk_size}"
  }

  os_profile {
    computer_name  = "${var.vm_computer_name}"
    admin_username = "${var.vm_admin_username}"
    admin_password = "${var.vm_admin_password}"
  }

  os_profile_windows_config {
    provision_vm_agent = "${var.vm_provision_vm_agent}"
  }

  tags = {
    name            = "${var.resource_group_name}"
    environment     = "${var.environment}"

  }
}

