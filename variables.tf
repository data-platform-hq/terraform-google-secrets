variable "region" {
  description = "The location or cloud resources region for the environment."
  type        = string
}

variable "env" {
  description = "Variable to mark the environment of the resources (used to create resources names)"
  type        = string
  default     = ""
}

variable "prefix" {
  description = "Prefix for resource names"
  type        = string
  default     = ""
}

variable "suffix" {
  description = "Suffix for resource names"
  type        = string
  default     = ""
}


variable "secrets_input" {
  description = "A key/value pair to create a secret. The key will be used for the secret name, the value will be stored as the secret value."
  type        = map(string)
}

variable "expire_time" {
  description = "Timestamp in UTC when the Secret is scheduled to expire"
  type        = string
  default     = ""
}

variable "next_rotation_time" {
  description = "Timestamp in UTC at which the Secret is scheduled to rotate"
  type        = string
  default     = ""
}

variable "rotation_period" {
  description = "The Duration between rotation notifications. If rotationPeriod is set, next_rotation_time must be set"
  type        = string
  default     = ""
}

variable "topics_name" {
  description = "The resource name of the Pub/Sub topic that will be published to, in the following format: projects//topics/. For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic."
  type        = string
  default     = ""
}

variable "labels" {
  description = "The labels associated with secrets. "
  type        = map(string)
  default     = {}
}
