variable "aws_region" {
  description = "Regions where the AWS resource is getting deployed to "
  type        = string
}

variable "environment" {
  description = "This will be the envrionment we deploy the resource onto"
  type        = string
}

variable "business_division" {
  description = "This will be the side of the business that requires this resource"
  type        = string
}