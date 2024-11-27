terraform {
  backend "s3" {
    bucket = "aws-infra-state"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
