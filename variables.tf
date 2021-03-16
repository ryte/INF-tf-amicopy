variable "name" {
  type        = string
  description = "the ami name to copy, special characters like '*' are allowed"
}

variable "tags" {
  type        = map(string)
  description = "common tags to add to the ressources"
  default     = {}
}

variable "environment" {
  type        = string
  description = "the environment this ami is copied to (e.g. 'testing')"
}
