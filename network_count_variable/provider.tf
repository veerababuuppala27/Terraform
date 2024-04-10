terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Configuring AWS provider

provider "aws" {
    region = "ap-south-1"

}