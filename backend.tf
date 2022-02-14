terraform {
  backend "s3" {
    bucket         = "mystatefiles-testing"
    region         = "us-east-1"
    encrypt        = true
  }
}