variable "resource_group_name" {}
variable "location" {}
variable "vm_name" {}
variable "nic_id" {}
variable "vm_size" {}
variable "delete_os_disk_on_termination" {}
variable "delete_data_disks_on_termination" {}

variable "environment" {}

// Storage Image reference Variable...
variable "vm_publisher" {}
variable "vm_offer" {}
variable "vm_sku" {}
variable "vm_version" {}

 # variable "id" {}


// OS Disk Variables...
variable "vm_os_managed_disk_type" {}
variable "vm_os_caching" {}
variable "vm_os_create_option" {}
variable "vm_os_disk_size" {}
variable "vm_os_type" {}

// Data Disk Variables...
variable "vm_data_managed_disk_type" {}
variable "vm_data_create_option" {}
variable "vm_data_lun" {}
variable "vm_data_disk_size" {}

// Machine User Details variables...
variable "vm_computer_name" {}
variable "vm_admin_username" {}
variable "vm_admin_password" {}
variable "vm_provision_vm_agent" {}



