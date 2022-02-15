terraform {
  backend "s3" {
    bucket  = "mystatefiles-testing"
    key     = "EKS/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}