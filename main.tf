terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0" # Optional but recommended in production
    }
  }
}


#provider block
provider "aws" {
  region = "us-east-1"
}


resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"


  tags = {
    Name = "Prod"
  }
}