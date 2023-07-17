output "secrets_id" {
  value       = { for k, v in local.secrets : k => google_secret_manager_secret.this[k].id if k != null }
  description = "The id of the secret."
}

output "secrets_name" {
  value       = { for k, v in local.secrets : k => google_secret_manager_secret.this[k].name if k != null }
  description = "The name of the secret."
}

output "secrets_value" {
  value       = { for k, v in local.secrets : k => google_secret_manager_secret_version.this[k].secret_data if k != null }
  description = "The value of secret."
  sensitive   = true
}
