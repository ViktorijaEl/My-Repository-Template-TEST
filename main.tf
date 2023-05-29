terraform {
  required_providers {
    aws = ">= 3.0"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"  # Replace with the actual AMI ID
  instance_type = "t2.micro"               # Replace with the desired instance type
  # Additional configuration for the instance
}
