terraform {
  required_providers {
    aws = ">= 3.0"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-12345678"        # Replace with the desired AMI ID
  instance_type = "t2.micro"            # Replace with the desired instance type
  # Additional configuration for the instance
}
