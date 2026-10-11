variable "synthetics_secure_credentials" {
  description = <<EOT
Map of synthetics_secure_credentials, attributes below
Required:
    - key
    - value
Optional:
    - account_id
    - description
    - last_updated
    - timeouts (block):
        - read (optional)
EOT

  type = map(object({
    key          = string
    value        = string
    account_id   = optional(number)
    description  = optional(string)
    last_updated = optional(string)
    timeouts = optional(object({
      read = optional(string)
    }))
  }))
}

