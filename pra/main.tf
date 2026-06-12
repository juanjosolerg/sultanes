terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

module "backend" {
  source = "./modules/project"
  project_name = "backend-api"
  author = "Adrián"
  environment = "dev"
  base_dir = "${path.module}/output"
}

module "frontend" {
  source       = "./modules/project"
  project_name = "frontend-app"
  author       = "Adrián"
  environment  = "dev"
  base_dir     = "${path.module}/output"
}