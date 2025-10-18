terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.16.0"
    }
  }
   backend "s3" {
    bucket = "myown-remote-state" 
    key = "remote_dynamic_local"
    encrypt = true
    region = "us-east-1"
    use_lockfile = true  #locking state
    #dynamodb_table = "value" # this option is payable 
  }
}

provider "aws" {
  # Configuration options
}

