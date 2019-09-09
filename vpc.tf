# Define our VPC
resource "aws_vpc" "default" {
  cidr_block = "${var.vpc_cidr}"
  enable_dns_hostnames = true

  tags {
    Name = "ashishoperation"
  }
}
# Define public subnet
resource "aws_subnet" "public-subnet" {
vpc_id = "${aws_vpc.default.id}"
cidr_block = "${var.public_subnet_cidr}"
  
tags {
  Name = "Webserver-public subnet"
  }
  }
# define private subnet
resource "aws_subnet" "private-subnet" {
  vpc_id = "${aws_vpc.default.id}"
  cidr_block = "${var.private_subnet_cidr}"
  
  tags {
    Name = "database-private subnet"
    }
  }
