variable "name" {}
variable "tags" {
  type = "map"
  description = "common tags to add to the ressources"
  default = {}
}