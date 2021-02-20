variable "application" {
  type        = string
  description = "the name of the application using the queue"
}

variable "environment" {
  type        = string
  description = "the environment for the queue"
}

variable "some_list" {
  type        = list(any)
  description = "List of inputs"
}

variable "some_object" {
  type        = map(object({ name = string }))
  description = "Map of objects"
}