terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.98.0"
    }
  }
}


terraform {
  backend "s3" {
    bucket = "gana-84s-dev"
    key = "roboshop-dev-db"
    region = "us-east-1"
    encrypt = true   # this is for locking in S3 bucket
    use_lockfile = true
    # dynamodb_table = "gana-84s" # this is for native locking in dynamo_db
    
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
}