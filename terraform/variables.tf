variable "app_name" {
  default = "nextjs-app"
}

variable "image" {
  default = "nextjs-app:latest"
}

variable "replicas" {
  default = 2
}

variable "container_port" {
  default = 3000
}

variable "service_port" {
  default = 80
}

variable "host_name" {
  default = "nextjs.local"
}
