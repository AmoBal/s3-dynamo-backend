module "root_create_s3_backend" {
    source = "./modules/aws_s3_backend"
    s3_bucket_name = var.root_s3_bucket_name
    s3_ssealgo = var.root_s3_ssealgo
}

module "root_create_dynamo_locking" {
    source = "./modules/dynamodb_lock"
    dynamo_name = var.root_dynamo_name
    dynamo_hashkey = var.root_dynamo_hashkey
}