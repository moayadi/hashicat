terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "moayadi"

    workspaces {
      name = "prod-hashicat"
    }
  }
}