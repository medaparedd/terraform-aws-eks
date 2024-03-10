terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.38" # eks module requires more than 5.38
    }
  }

  backend "s3" {
    bucket         = "daws74s-state-dev"
    key            = "eks"
    region         = "us-east-1"
    dynamodb_table = "daws74s-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}