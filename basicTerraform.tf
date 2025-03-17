terraform{
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.54.1"
        }
    }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "myserver" {
    ami = ""
    instance_type = "t3.micro"

    tags = {
        Name = "MySampleServer"
    }
}