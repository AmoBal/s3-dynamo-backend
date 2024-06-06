resource "aws_dynamodb_table" "dynamodb_lock" {
  name = var.dynamo_name
  billing_mode = "PAY_PER_REQUEST"
  hash_key = var.dynamo_hashkey
  attribute {
    name = var.dynamo_hashkey
    type = "S"
  }
}