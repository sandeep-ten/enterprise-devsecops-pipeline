variable "container_name" {
  description = "Container Name"
  type        = string
  default     = "terraform-nginx"
}

variable "external_port" {
  description = "Host Port"
  type        = number
  default     = 8085
}