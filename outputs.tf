output "synthetics_secure_credentials_id" {
  description = "Map of id values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.id }
}
output "synthetics_secure_credentials_account_id" {
  description = "Map of account_id values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.account_id }
}
output "synthetics_secure_credentials_description" {
  description = "Map of description values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.description }
}
output "synthetics_secure_credentials_key" {
  description = "Map of key values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.key }
}
output "synthetics_secure_credentials_last_updated" {
  description = "Map of last_updated values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.last_updated }
}
output "synthetics_secure_credentials_value" {
  description = "Map of value values across all synthetics_secure_credentials, keyed the same as var.synthetics_secure_credentials"
  value       = { for k, v in newrelic_synthetics_secure_credential.synthetics_secure_credentials : k => v.value }
  sensitive   = true
}

