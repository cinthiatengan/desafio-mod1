# Backend configuration require a AWS storage bucket.
terraform {
  backend "s3" {
    bucket = "terraform-state-cin"
    key    = "state/igti/edc/mod1/terraform.tfstate"
    region = "us-east-2"
  }
}
