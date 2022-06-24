module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = var.bucket_name
  acl    = var.acl_type

  versioning = {
    enabled = true
  }

}