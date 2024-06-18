module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.8.1"

  #VPC BASIC DETAILS
  name = var.vpc_name
  cidr = var.vpc_cidr_block
  azs = var.vpc_availablity_zones
  public_subnets = var.vpc_public_subnet
  private_subnets = var.vpc_private_subnet

  # Databse Subnet
  database_subnets = var.vpc_database_subnet
  create_database_subnet_group = var.vpc_create_database_subent_group
  create_database_subnet_route_table = var.vpc_create_subnet_route_table
  create_database_nat_gateway_route = false 
  create_database_internet_gateway_route = false 

  # NatGateways
  enable_nat_gateway = true
  single_nat_gateway = true

  #DNS
  enable_dns_hostnames = true
  enable_dns_support = true

  #tags 
  tags = local.common_tags
  vpc_tags = local.common_tags

  #Additional_tags
  public_subnet_tags = {
    name = "Public Subent"
  }

  private_subnet_tags = {
    name = "Private Subnet"
  }

  database_subnet_tags = {
    name = "Private Database Subnet"
  }
}
