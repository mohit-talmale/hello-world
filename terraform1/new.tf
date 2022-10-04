
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.22.0"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "demoimage1" {
    name = "mohit1talmale/demo-project:newtag2"
  }
  resource "docker_container" "foo1" {
    image = docker_image.demoimage1.name
    name  = "foo1"
    ports {
      external = 8080
      internal = 80
    }
  }