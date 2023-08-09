# Declare the required providers for this Terraform configuration.

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.11.0"
    }
  }
}


# Define the AWS provider configuration.

provider "aws" {
  # Configuration options
  # No specific configuration options are added here yet.
  # You can add configuration settings such as region, credentials, etc. as needed.
}