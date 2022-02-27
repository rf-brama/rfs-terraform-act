terraform {
  backend "s3" {
    bucket  = "miax-state-files"
    key     = "EKS/terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}