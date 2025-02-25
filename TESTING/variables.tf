variable "project" {}
variable "environment" {}
variable "location" {}

variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}
variable "subscription_id" {}

variable "nic_name" {}


variable "subnet_id" {}
variable "resource_group_name" {

}


variable "network_security_group_id" {

}


variable "vm_name" {}

variable "vm_size" {}
variable "delete_os_disk_on_termination" {
  type = bool
}
variable "delete_data_disks_on_termination" {
  type = bool
}



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
variable "vm_data_managed_disk_type" {
  default = null
}
variable "vm_data_create_option" {
  default = null
}
variable "vm_data_lun" {
  type    = number
  default = 0

}
variable "vm_data_disk_size" {
  type    = number
  
}

// Machine User Details variables...
variable "vm_computer_name" {}
variable "vm_admin_username" {}
variable "vm_admin_password" {}
variable "vm_provision_vm_agent" {
  default = null
}
variable "vm_data_disk_type" {
  
}

variable "data_lun" {
  
}

variable "vm_disk_size" {
  
}