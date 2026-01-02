terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
      #version = "~> 5.84"
    }
  }

  backend "s3" {
    bucket         = "somi-tf-vpc"
    key            = "tf-vpc-test" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region         = "us-east-1"
    dynamodb_table = "somi-tf-vpc"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}