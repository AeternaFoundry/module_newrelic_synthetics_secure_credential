resource "newrelic_synthetics_secure_credential" "synthetics_secure_credentials" {
  for_each = var.synthetics_secure_credentials

  key          = each.value.key
  value        = each.value.value
  account_id   = each.value.account_id
  description  = each.value.description
  last_updated = each.value.last_updated

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      read = timeouts.value.read
    }
  }
}

