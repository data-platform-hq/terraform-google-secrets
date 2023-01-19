output "secrets_id" {
  value       = { for k, v in var.secrets_input : k => google_secret_manager_secret_version.creds_value[k].id }
  description = "The secrets id."
}

output "secrets_name" {
  value       = { for k, v in var.secrets_input : k => google_secret_manager_secret.creds[k].name }
  description = "The name of the secret."
}

output "secrets_value" {
  value       = { for k, v in var.secrets_input : k => google_secret_manager_secret_version.creds_value[k].secret_data }
  description = "The value of secrets."
}
