provider "aws" {
  region = var.aws_primary_region
}

resource "aws_s3_bucket" "petshop_bucket" {
  bucket = "${var.canonicalName}mypetshop-bucket"
  
  tags = {
    Environment = var.account_name
    Project     = "MyPetShop"
    Workspace   = terraform.workspace
  }
}

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.petshop_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
} 