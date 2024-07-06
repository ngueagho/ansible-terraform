terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "docker-in-docker2" {
  name = "docker-in-docker2"
  build {
    context = "."  # Utilisez le chemin absolu
    dockerfile = "Dockerfile"
    tag     = ["docker-in-docker2:latest"]
    build_arg = {
      foo = "docker-in-docker2"
    }
    label = {
      author = "[ROBERTO LANDRY]"
    }
  }
}
