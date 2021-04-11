terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  access_key = "ASIAYQ7EUOKOKGYOMDPK"
  secret_key = ""
  token = "IQoJb3JpZ2luX2VjEFEaCXVzLXdlc3QtMiJGMEQCIDJt3iPhZBy8RtjnQoaLZ46QtmU/0qMXesrDdZNLE26sAiBT7j73nHOf3yigPCpaVNrbX6iOf1x4hid4uIemgx1/3yqtAgiq//////////8BEAEaDDU4NjIwNTY1NTcwOCIMBxaYl2Ok1H/5TH4PKoEC/YqsHE6wKpsdYz36gfv2ToUiT+Fc6zXbJpTuJG13lKPgLy/pBZ58QorUmD+mXNHIrHGHOn49jOhnvlqCrwOR/Rz2rzeCeCiD+at+Bs1PIhbCFvqwsMtSgtuQz6KQVKMkRFWHYzS0mNmDqVq9nNNUsPrXrYOBvbQc5TVu/nYdrs4+EtImj/kzAVKwfGQmK1q1iMAGmov5urnRk6fNfYrofwXTf9XMjiLiHmlh1fzDcPUSdnPmYGTA6wfrIRaJtODIFtH++tD/6y6lJquX3H+Q+giMz6hNa5nElZwGZGY/fUf3wac9NDoQcv4jookfl7dQuHgkF6h2QhbpSyzhqnVM5kMwis/MgwY6ngHhAmSTIqX7sJi/OsgKEnUjdVM9Fwy5T6ZGREwtQwACmxW5f+d8z4lK4O6Z6QT214D0E3z6VDEb+mYAeB6EyCpixxv2xQhD2+3OAVeWFne6r8s6JEgAtVrt9GoKMKdF5GrrIZc9SkJ7L3jwG+vvQ6aGJMVxgEkGVVtuKfX5y0WkKa0zUiU2mtuF1y+VGoSZjXTL63TOjte1ajdYqDgydA=="
  region = "us-east-1"
}

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
  tags = {
    name = "Udacity Terraform"
  }
  subnet_id = "subnet-0e7571e3c4d270b8e"
}

resource "aws_instance" "Udacity_M4" {
  count = "2"
  ami = "ami-0323c3dd2da7fb37d"
  instance_type = "m4.large"
  tags = {
    name = "Udacity Terraform"
  }
  subnet_id = "subnet-0e7571e3c4d270b8e"
}