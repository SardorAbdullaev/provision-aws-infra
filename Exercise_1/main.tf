terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  access_key = ""
  secret_key = ""
  token = ""
  region = "us-east-1"
}

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity T2"
  }
  subnet_id = "subnet-0e7571e3c4d270b8e"
}
