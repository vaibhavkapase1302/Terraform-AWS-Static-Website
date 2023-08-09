# Create an S3 bucket with the specified name.

resource "aws_s3_bucket" "mybucket" {
  bucket = var.bucketname
}

# Define ownership controls for the S3 bucket.

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.mybucket.id

  rule {
    # Configure object ownership to prefer the bucket owner.
    object_ownership = "BucketOwnerPreferred"
  }
}

# Configure public access block settings for the S3 bucket.

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.mybucket.id

  block_public_acls       = false     # Allow public ACLs on objects.
  block_public_policy     = false     # Allow public policies on the bucket.
  ignore_public_acls      = false     # Disallow objects from having public ACLs.
  restrict_public_buckets = false     # Disallow public access to the bucket.
}

# Configure the bucket's access control list (ACL) to allow public-read access.

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.mybucket.id
  acl    = "public-read"
}

# Upload the "index.html" file to the S3 bucket.

resource "aws_s3_object" "index" {
  bucket = aws_s3_bucket.mybucket.id
  key = "index.html"
  source = "index.html"
  acl = "public-read"
  content_type = "text/html"
}

# Upload the "error.html" file to the S3 bucket.

resource "aws_s3_object" "error" {
  bucket = aws_s3_bucket.mybucket.id
  key = "error.html"
  source = "error.html"
  acl = "public-read"
  content_type = "text/html"
}

# Upload the "profile.JPG" file to the S3 bucket.

resource "aws_s3_object" "profile" {
  bucket = aws_s3_bucket.mybucket.id
  key = "profile.JPG"
  source = "profile.JPG"
  acl = "public-read"
}

# Configure the S3 bucket's website configuration.

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.mybucket.id

# Specify the default index document for the website.
  index_document {
    suffix = "index.html"
  }
  # Specify the error document for the website.
  error_document {
    key = "error.html"
  }

  depends_on = [ aws_s3_bucket_acl.example ]
}

