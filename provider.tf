terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "example" {
   ami           = "ami-0a13d44dccf1f5cf6"
  instance_type = "t2.micro"
}
