terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.40.0"
    }
  }
  backend "s3" {
    bucket = "terraform-state-imp"
    key    = "stop-instances/terraform.tfstate"
    region = "eu-west-2"
  }
}
provider "aws" {
  region = "eu-west-2"
}
