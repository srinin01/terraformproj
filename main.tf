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
    organization = "SRINI_I"

    workspaces {
      name = "gh-actions-demo"
    }
  }
}
