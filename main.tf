module "create_vpc" {
  source = "../../modules/vpc/"
  network_name = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  routing_mode = var.routing_mode
  network_description = var.network_description
  subnets = var.subnets
  secondary_ranges = var.secondary_ranges
}


module "VM" {
  source = "../../modules/vm/"

  label_definitions   = var.label_definitions
  instance_name       = var.instance_name
  machine_type        = var.machine_type
  zone                = var.zone
  tags                = var.tags
  vmsubnetname        = var.vmsubnetname
  instance_image      = var.instance_image
  network             = module.create_vpc.network_id
  service_account_email = var.service_account_email
}