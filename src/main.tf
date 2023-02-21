module "network" {
  source          = "./modules/network"
  access_ip       = var.access_ip
  vpc_cidr        = local.vpc_cidr
  security_groups = local.security_groups
}

module "ec2" {
  source        = "./modules/ec2"
  public_sg     = module.network.public_sg
  public_subnet = module.network.public_subnet
}
