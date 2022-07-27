resource "aws_s3_bucket" "s3_files" {
  bucket = "douglas-remote-state"
  versioning {
    enabled = true
  }
}