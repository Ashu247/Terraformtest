# Define our VPC
resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "ashishoperation"
  }
}
# Define private subnet
resource "aws_subnet" "public-subnet" {
vpc_id = "${aws_vpc.default.id}"
cidr_block = "${var.public_subnet_cidr}"
  
tags {
  Name = "Webserver-public sunet"
  }
  }
