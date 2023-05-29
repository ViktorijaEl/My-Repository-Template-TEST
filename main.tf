# terraform {
#   required_providers {
#     aws = ">= 3.0"
#   }
# }

# resource "aws_instance" "example" {
#   ami           = "ami-0c94855ba95c71c99"  # Replace with the actual AMI ID
#   instance_type = "t2.micro"               # Replace with the desired instance type
#   # Additional configuration for the instance
# }
terraform {
  required_providers {
    aws = ">= 3.0"
  }
}

resource "aws_instance" "example" {
  ami           = "ami-0c94855ba95c71c99"
  instance_type = "t2.micro"

  monitoring {
    enabled = true
  }

  metadata_options {
    http_tokens = "required"
  }

  root_block_device {
    encrypted = true
  }

  ebs_optimized = true

  iam_instance_profile = "your-iam-role"

  # Additional configuration for the instance
}
