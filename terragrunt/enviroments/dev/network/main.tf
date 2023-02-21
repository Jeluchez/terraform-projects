module "network" {
  source          = "./network"
  access_ip       = var.access_ip
  vpc_cidr        = local.vpc_cidr
  security_groups = local.security_groups
}
