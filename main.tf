provider "aws" {
  region = "us-west-2"  # You can change this to your preferred region
}

resource "aws_s3_bucket" "petshop_bucket" {
  bucket = "mypetshop-terraform-bucket"  # Change this to a unique bucket name
  
  tags = {
    Environment = "Development"
    Project     = "MyPetShop"
    Branch      = "development"
  }
}

# Enable versioning for the bucket
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.petshop_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
} 