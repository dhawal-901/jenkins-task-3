terraform {

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.62.0"
    }
  }

  backend "s3" {
    bucket  = "tf-bucket00"
    encrypt = true
    key     = "Tasks/jenkins-task-3/terraform.tfstate"
    region  = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}
