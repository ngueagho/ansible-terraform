terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.2"
    }
  }
}

provider "docker" {
#   version = "> 3.0.2"
  host    = "unix:///var/run/docker.sock"
}

module "image" {
    source = "./modules/image"  
}

module "volume" {
    source = "./modules/volumes"
}

module "container" {
    source = "./modules/container"
}
