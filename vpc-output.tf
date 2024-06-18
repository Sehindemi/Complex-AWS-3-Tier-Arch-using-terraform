output "vpc_id" {
  description = "ID Of the VPC created"
  value = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "CIDR Block of the vpc"
  value = module.vpc.vpc_cidr_block
}

output "private_subnets" {
  description = "private subnets for the vpc"
  value = module.vpc.private_subnets
}

output "public_subnets" {
  description = "public subnets for the vpc"
  value = module.vpc.public_subnets
}

output "nat_public_ips" {
  description = "List public ELastic IPS created for NAT Gateways"
  value = module.vpc.nat_public_ips
}

output "azs" {
  description = "list of the avalablity zones"
  value = module.vpc.azs
}