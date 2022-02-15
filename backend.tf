terraform {
  backend "s3" {
    bucket         = "mystatefiles-testing/Terraform/terraform.tfstate"
    region = "us-east-1"
  }
}