variable "region" {
  description = "The location or cloud resources region for the environment."
  type        = string
}

variable "product_base_name" {
  description = "Cloud resources base name (used to create services)."
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resource (used to create services)."
  type        = string
}

variable "project_number" {
  description = "The numeric identifier of the GCP project."
  type        = string
}

variable "sa_key" {
  description = "Names (key/value pair) of secrets where service accounts keys are stored."
  type        = map(any)
  default     = {}
}

variable "labels" {
  description = "The labels associated with secrets. "
  type        = map(string)
  default     = {}
}
