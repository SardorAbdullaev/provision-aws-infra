# TODO: Designate a cloud provider, region, and credentials


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2


# TODO: provision 2 m4.large EC2 instances named Udacity M4
provider "aws" {
  access_key = "<Your Access Key>"
  secret_key = "<Your Secret Key>"
  region = "us-east-1"
}

resource "aws_instance" "Udacity" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.small"
  tags = {
    name = "Udacity Terraform"
  }
}

resource "aws_instance" "Backend" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}