resource "aws_vpc" "test-vpc" {
  cidr_block = "${local.vpc_address}/16"
  tags = {
    Name = "test-vpc",
    terraform = true
  }
}