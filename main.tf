terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 4.16"
    }
  }
  required_version = ">=1.2.0"
}

provider "aws" {
    region = "us-east-1"
  
}

resource "aws_instance" "cloud_test" {
    instance_type = "t2.micro"
    ami = "ami-02f3f602d23f1659d"
    tags = {
        Name = "ExampleCloudTest"
    }
}
  

