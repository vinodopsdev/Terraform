terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAJO7WWF45PTVD46QQ"
  secret_key = "d/WC+zenSdy42Ev3ZDbtHvI+W27LiGy3EXhkNoym"
}

resource "aws_instance" "Sample"{
  ami = "ami-03f0fd1a2ba530e75"
  instance_type = "t2.micro"
  
  tags = {
    Name = "Sample Instance"
  }
}
