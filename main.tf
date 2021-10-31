terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  backend "remote" {
    organization = "test2322"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
