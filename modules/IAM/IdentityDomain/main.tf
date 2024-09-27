resource "oci_identity_domain" "identiy_domain" {
  #Required
  compartment_id = var.compartment_id
  description    = var.description
  display_name   = var.display_name
  home_region    = var.home_region
  license_type   = var.license_type

  #Optional
  admin_email              = var.admin_email
  admin_first_name         = var.admin_first_name
  admin_last_name          = var.admin_last_name
  admin_user_name          = var.admin_user_name
  is_notification_bypassed = var.is_notification_bypassed
  #defined_tags              = { "Operations.CostCenter" = "42" }
  #freeform_tags             = { "Department" = "Finance" }
  #is_hidden_on_login        = var.domain_is_hidden_on_login
  #is_notification_bypassed  = var.domain_is_notification_bypassed
  #is_primary_email_required = var.domain_is_primary_email_required
}
