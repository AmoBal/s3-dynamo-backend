resource "aws_s3_bucket" "s3_backend_lock" {
    bucket = var.s3_bucket_name
}

resource "aws_s3_bucket_versioning" "s3-versioning" {
    bucket = aws_s3_bucket.s3_backend_lock.id
    versioning_configuration {
      status = "Enabled"
    }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "s3-sse" {
    bucket = aws_s3_bucket.s3_backend_lock.id
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = var.s3_ssealgo
      }
    }
}
