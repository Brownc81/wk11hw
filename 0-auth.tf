provider "aws" {
  # Configuration options

  region = "eu-west-3"

  default_tags {
    tags = {
      ManagedBy = "Terraform"
    }
  }
}