########################
# Compartment
########################

resource "oci_identity_compartment" "compartment" {
  count          = var.compartment_create ? 1 : 0
  compartment_id = var.compartment_id != null ? var.compartment_id : var.tenancy_ocid
  name           = var.compartment_name
  description    = var.compartment_description
  enable_delete  = var.enable_delete
}

data "oci_identity_compartments" "compartment" {
  count          = var.compartment_create ? 0 : 1
  compartment_id = var.compartment_id

  filter {
    name   = "name"
    values = [var.compartment_name]
  }
}

locals {
  compartment_ids        = concat(flatten(data.oci_identity_compartments.compartment.*.compartments), tolist([tomap({ "id" = "" })]))
  parent_compartment_ids = concat(flatten(data.oci_identity_compartments.compartment.*.compartments), tolist([tomap({ "compartment_id" = "" })]))
}
