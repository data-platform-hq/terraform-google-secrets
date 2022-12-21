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

variable "secrets_input" {
  description = "A key/value pair to create a secret. The key will be used for the secret name, the value will be stored as the secret value."
  type        = map(string)
}

variable "labels" {
  description = "The labels associated with secrets. "
  type        = map(string)
  default     = {}
}
