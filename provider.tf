terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
  backend "s3" {
    bucket = "terraform-bucket-saziya"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-west-2"
}

resource "aws_instance" "example" {
  - ami           = "ami-0a13d44dccf1f5cf6"
    instance_type = "t2.micro"
  + ami           = "ami-0fc841be1f929d7d1"
    instance_type = "t2.micro"
}
