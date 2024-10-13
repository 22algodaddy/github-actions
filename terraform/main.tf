terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.71.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
 }

resource "aws_s3_bucket" "example" {
  bucket = "hu-devops24-dhruv"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
output "bucket_name" {
  value = aws_s3_bucket.example.id
}