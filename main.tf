terraform {
  required_providers {
    aws = ">= 3.0"
  }
}

resource "aws_instance" "example" {
  # Your resource configuration
}
