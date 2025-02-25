module "nic-nsgassociate-module" {
  source  = "alb-tfepoc-01-1675441280.ap-southeast-1.elb.amazonaws.com/Power-Terra/nic-nsgassociate-module/azure"
  version = "1.0.0"
  network_interface_id      = module.nic-module.nic_id
  network_security_group_id = var.network_security_group_id

}


