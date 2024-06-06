variable "root_s3_bucket_name" {
    type = string
    default = "my-s3-backend-to-lock"
} 

variable "root_s3_ssealgo" {
    type = string
    default = "AES256"
}

variable "root_dynamo_name" {
    type = string
    default = "my-dynamo-lock-of-s3"
}

variable "root_dynamo_hashkey" {
    type = string
    default = "LockID"
}