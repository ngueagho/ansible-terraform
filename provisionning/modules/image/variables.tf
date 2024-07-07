variable "container_info" {
  type = object({
    name = string
    context = string
    dockerfile = string
    tag = list(string)
    foo = string
    author = string
  })
  default = {
    name = "docker-in-docker2"
    context = "."
    dockerfile = "Dockerfile"
    tag = ["docker-in-docker2:latest"]
    foo = "docker-in-docker2"
    author = "[ROBERTO LANDRY]"
  }
}