variable "enabled" {
  description = "Set to false to prevent the module from creating anything"
  default     = true
}

variable "teams" {
  description = "List of Github team maps to manage"
  type        = "list"
}
