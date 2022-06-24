provider "aws" {
  region = var.aws_region

}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = var.bucket_name
  acl    = var.acl_type

  versioning = {
    enabled = true
  }

}

module "sns_topic" {
  source  = "terraform-aws-modules/sns/aws"
  version = "~> 3.0"

  name = var.my_name
}