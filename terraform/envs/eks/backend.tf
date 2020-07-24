terraform {
  required_version = ">= 0.12.20"

  backend "s3" {
    bucket  = "dev-wallet-tfstate"
    key     = "dev-wallet-demo"
    encrypt = "true"
    dynamodb_table = "dev-wallet-demo-lock"
    region  = "us-east-1"
    profile = "dev-bikini-us-east-1"
  }
}
