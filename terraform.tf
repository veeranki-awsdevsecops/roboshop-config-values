provider "vault" {
  address = "http://vault-inernal.veerankitek.online:8200"
  token   = var.token
}

terraform {
  backend "s3" {
    bucket = "terraform-b2025"
    key    = "roboshop-config-values/terraform.tfstate"
    region = "us-east-1"
  }
}
