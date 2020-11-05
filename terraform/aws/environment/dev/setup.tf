# s3 encryption
resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
  lifecycle {
    prevent_destroy = true
  }
}

# s3 storage for terraform state
resource "aws_s3_bucket" "terraform-state-storage-s3" {
  bucket = "terraform-remote-state-cdt-demo-s3"
  versioning {
    enabled = true
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = var.tags
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = aws_kms_key.mykey.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

#dynamo db table for locking the state
resource "aws_dynamodb_table" "dynamodb-terraform-state-lock" {
  name           = "terraform-state-lock-dynamo"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
  lifecycle {
    prevent_destroy = true
  }
  tags = var.tags
}