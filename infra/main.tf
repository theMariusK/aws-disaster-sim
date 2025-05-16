terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "s3" {
    bucket = "marius-disaster-sim-terraform-state"
    key = "terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "marius-disaster-sim-terraform-locks"
    encrypt = true
  }
}

provider "aws" {
  region = "eu-central-1"
}
