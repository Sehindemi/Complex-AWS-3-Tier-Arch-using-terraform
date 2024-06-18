variable "vpc_name" {
  description = "This will be the name of the vpc"
  type = string
}

variable "vpc_cidr_block" {
  description = "Ths CIDR block for the VPC"
  type = string
}

variable "vpc_availablity_zones" {
  description = "The availablity zones that the VPC will be deployed to"
  type = list(string)
  }

variable "vpc_public_subnet" {
  description = "The public CIDR subnets for the VPC's"
  type = list(string)
}

variable "vpc_private_subnet" {
  description = "The Private CIDR subnets for the VPC's"
  type = list(string)
}

variable "vpc_database_subnet" {
  description = "CIDR block for the database subnet"
  type = list(string)
}

variable "vpc_create_database_subent_group" {
  description = "Creation of subnet group for the database instance"
  type = bool
}

variable "vpc_create_subnet_route_table" {
  description = "Create a route table for database subnet"
  type = bool
}

variable "vpc_enable_nat_gateway" {
  description = "Vpc Nat Gateway"
  type = bool
}

variable "vpc_single_nat_gateway" {
  description = "Create a single NAT gateway per availablity zones"
  type = bool
}