##############################################################
# Random Bucket Suffix
##############################################################

resource "random_string" "bucket_suffix" {

  length  = 6
  upper   = false
  lower   = true
  numeric = true
  special = false

}

##############################################################
# S3 Bucket
##############################################################

resource "aws_s3_bucket" "won_bills_bucket" {

  bucket = "${var.bucket_name}-${random_string.bucket_suffix.result}"

  tags = {
    Name        = "WON Bills"
    Project     = var.project_name
    Application = var.application_name
    Environment = var.environment
    Owner       = var.owner
  }

}

##############################################################
# Bucket Versioning
##############################################################

resource "aws_s3_bucket_versioning" "won_bills_versioning" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  versioning_configuration {
    status = "Enabled"
  }

}

##############################################################
# Server Side Encryption
##############################################################

resource "aws_s3_bucket_server_side_encryption_configuration" "won_bills_encryption" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  rule {

    apply_server_side_encryption_by_default {

      sse_algorithm = "AES256"

    }

  }

}

##############################################################
# Block Public Access
##############################################################

resource "aws_s3_bucket_public_access_block" "won_bills_public_access" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  block_public_acls       = false
  ignore_public_acls      = false
  block_public_policy     = false
  restrict_public_buckets = false

}

##############################################################
# Ownership Controls
##############################################################

resource "aws_s3_bucket_ownership_controls" "won_bills_owner" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  rule {

    object_ownership = "BucketOwnerEnforced"

  }

}

##############################################################
# Upload Sample File
##############################################################

resource "aws_s3_object" "sample_document" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  key = "documents/sample.txt"

  source = "${path.module}/documents/sample.txt"

  content_type = "text/plain"

  etag = filemd5("${path.module}/documents/sample.txt")

}
resource "aws_s3_bucket_policy" "public_read" {

  bucket = aws_s3_bucket.won_bills_bucket.id

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "PublicRead"
        Effect = "Allow"

        Principal = "*"

        Action = [
          "s3:GetObject"
        ]

        Resource = [
          "${aws_s3_bucket.won_bills_bucket.arn}/*"
        ]
      }
    ]
  })

}