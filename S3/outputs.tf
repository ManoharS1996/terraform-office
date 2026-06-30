##############################################################
# S3 Outputs
##############################################################

output "bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.won_bills_bucket.bucket
}

output "bucket_arn" {
  description = "S3 Bucket ARN"
  value       = aws_s3_bucket.won_bills_bucket.arn
}

output "bucket_id" {
  description = "S3 Bucket ID"
  value       = aws_s3_bucket.won_bills_bucket.id
}

output "bucket_region" {
  description = "AWS Region"
  value       = var.aws_region
}
##############################################################
# Uploaded Object
##############################################################

output "object_key" {
  description = "S3 Object Key"
  value       = aws_s3_object.sample_document.key
}

output "object_etag" {
  description = "Object ETag"
  value       = aws_s3_object.sample_document.etag
}

output "s3_uri" {
  description = "S3 URI"
  value       = "s3://${aws_s3_bucket.won_bills_bucket.bucket}/${aws_s3_object.sample_document.key}"
}

output "object_url" {
  description = "S3 Object URL"
  value       = "https://${aws_s3_bucket.won_bills_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/${aws_s3_object.sample_document.key}"
}
output "public_document_url" {

  value = "https://${aws_s3_bucket.won_bills_bucket.bucket}.s3.${var.aws_region}.amazonaws.com/documents/sample.txt"

}