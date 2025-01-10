terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
required_version = "~> 1.10.4"
}
provider "aws" {
  region = "ap-south-1"
}
provider "aws" {
  region = "us-east-1"
  alias = "virginia"
}