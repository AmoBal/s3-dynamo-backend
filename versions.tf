terraform {
  backend "s3" {
    bucket = "my-s3-backend-to-lock"
    key = "state/terraform.tfstate"
    region = "ap-southeast-2"
    dynamodb_table = "my-dynamo-lock-of-s3"
  }
}