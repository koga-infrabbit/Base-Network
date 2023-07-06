# AWS API Credentials
variable "aws_access_key" {}
variable "aws_secret_key" {}

# VPC Network BaseSegment(Local)
variable "vpc_address" {
    description = "VPC Network BaseSegment(Local)"
    type = string
    default = "10.0.0.0"
}

