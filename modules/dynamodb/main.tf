resource "aws_dynamodb_table" "terraform_locks" {
  name         = var.terraform_locks_table_name
  billing_mode = var.billing_mode
  hash_key     = var.hash_key

  attribute {
    name = "LockID"
    type = "S"
  }
}