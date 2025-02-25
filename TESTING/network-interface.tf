# Calling Network Interface Module here...

module "nic-module" {
  source  = "alb-tfepoc-01-1675441280.ap-southeast-1.elb.amazonaws.com/Power-Terra/nic-module/azure"
  version = "1.0.0"
  nic_name            = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name
  #subnet_id           = data.azurerm_subnet.subnet_vm.id
  subnet_id = var.subnet_id
  environment         = var.environment
  

}