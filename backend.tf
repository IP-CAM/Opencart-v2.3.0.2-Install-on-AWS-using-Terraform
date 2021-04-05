terraform {
  backend "s3" {
    bucket         = "eks-s3"
    key            = "./terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-locks"
    encrypt        = true
  }
}
