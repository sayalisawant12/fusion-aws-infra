terraform {
  backend "s3" {
    bucket = "fusion-aws-infra-tfstate-dev"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
