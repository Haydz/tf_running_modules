# locals {
#   bucket_name = "haydn-test-stuff-2"
# }

# terraform {
#   required_version = ">= 1.0.0, < 2.0.0"

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 4.0"
#     }
#   }

#  backend "s3" {


#     bucket         = local.bucket_name
#     key            = "mysql_terraform.tfstate"
#     region         = "us-east-1"
#     # dynamodb_table = "<YOUR DYNAMODB TABLE>"
#     encrypt        = true
#   }as
  
# }

provider "aws" {
  region = "us-east-1"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "terraform-up-and-running"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t4g.micro"
  db_name             = var.db_name
  username            = var.db_username
  password            = var.db_password
  skip_final_snapshot = true
}
