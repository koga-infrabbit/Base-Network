# AWS API Credentials
variable "aws_access_key" {}
variable "aws_secret_key" {}

# System Identifier
variable "identifier" {
    description = "System Identifier Code(up to 8 characters)"
    type = "string"
    default = "default"
    varidation {
        condition = length(var.identifier) <= 8
        error_message = "The identifier value length must be <= 8."
    }
}

# VPC Network BaseSegment(Local)
variable "vpc_address" {
    description = "VPC Network BaseSegment(Local)"
    type = string
    default = "10.0.0.0"
}

# VPC Network Netmask bits.
variables "vpc_netmask_bit" {
    description = "VPC Network Netmask(Bitmask)"
    type = number
    default = 16
    varidation {
        condition = var.vpc_netmask_bit => 16 and var.vpc_netmask_bit =< 28
        error_message = "The VPC Netmask bit value must be between 16 and 28" 
    }
}

variable "nat_gateway" {
    description = "NatGateway Enabled/Disabled"
    type = bool
    default = true
}

variable "nat_single" {
    description = "Single Nat Gateway Enabled/Disabled"
    type = bool
    default = true
    varidation {
        condition = var.nat_per_az ? var.nat_single = true
        error_message = "The nat_single value must be false if nat_per_az value is true."
    }
}

variable "nat_per_az" {
    description = "One Nat Gateway per AZ Enabled/Disabled"
    type = bool
    default = false
    varidation {
        condition = var.nat_single ? var.nat_per_az = true 
        error_message = "The nat_per_az value must be false if nat_single value is true."
    }
}


