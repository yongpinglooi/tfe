## Calling VM Module here...
module "vm-module" {
  source  = "alb-tfepoc-01-1675441280.ap-southeast-1.elb.amazonaws.com/Power-Terra/vm-module/azure"
  version = "1.0.0"
  vm_name                          = "${var.project}-${var.environment}-${var.vm_name}-01"
  nic_id                           = module.nic-module.nic_id
  vm_size                          = var.vm_size
  location                         = var.location
  resource_group_name              = var.resource_group_name
  delete_os_disk_on_termination    = true
  delete_data_disks_on_termination = true

  # id                             = "${data.azurerm_image.image.id}"

  vm_admin_username         = var.vm_admin_username
  vm_admin_password         = var.vm_admin_password
  vm_data_managed_disk_type = var.vm_data_disk_type
  vm_data_lun               = var.data_lun
  vm_data_disk_size         = var.vm_disk_size
  environment               = var.environment
  vm_publisher              = var.vm_publisher
  vm_sku                    = var.vm_sku
  vm_version                = var.vm_version
  vm_computer_name          = var.vm_computer_name
  vm_data_create_option     = var.vm_data_create_option

  vm_offer                = var.vm_offer
  vm_os_create_option     = var.vm_os_create_option
  vm_os_disk_size         = var.vm_os_disk_size
  vm_os_type              = var.vm_os_type
  vm_os_caching           = var.vm_os_caching
  vm_os_managed_disk_type = var.vm_os_managed_disk_type
  vm_provision_vm_agent   = true
}
