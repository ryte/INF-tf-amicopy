variable "name" {
}

variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "environment" {
}
