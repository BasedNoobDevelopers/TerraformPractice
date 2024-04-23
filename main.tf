terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "web" {
  ami           = "al2023-ami-2023"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}