terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}

provider "docker" {}

resource "docker_image" "demo_image" {
  name         = "mohit1talmale/demo-project:newtag2"
  keep_locally = false
}

resource "docker_container" "demo_container" {
  image = docker_image.demo_image.name
  name  = "tutorial"
  ports {
    internal = 80
    external = 8080
  }
}