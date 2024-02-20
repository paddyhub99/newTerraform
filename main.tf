provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "paddy-aarvi-99"
    key = "terraform.tfstate"
    region = "us-east-1"
  }
}

resource "aws_instance" "Pankaj_ec2" {
    ami = "ami-0440d3b780d96b29d"
    instance_type = "t2.micro"
    
    tags = {
      Name = "Paddy_EC2"
    }
}
