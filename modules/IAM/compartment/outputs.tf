output "compartment_id" {
  description = "Compartment ocid"
  // This allows the compartment ID to be retrieved from the resource if it exists, and if not to use the data source.
  value = var.compartment_create ? element(concat(oci_identity_compartment.compartment.*.id, tolist([""])), 0) : lookup(local.compartment_ids[0], "id")
}

output "parent_compartment_id" {
  description = "Parent Compartment ocid"
  // This allows the compartment ID to be retrieved from the resource if it exists, and if not to use the data source.
  #value = var.compartment_create ? element(concat(oci_identity_compartment.compartment.*.compartment_id, list("")), 0) : lookup(local.parent_compartment_ids[0], "compartment_id")
  value = var.compartment_create ? element(concat(oci_identity_compartment.compartment.*.compartment_id, tolist([""])), 0) : lookup(local.parent_compartment_ids[0], "compartment_id")
}

output "compartment_name" {
  description = "Compartment name"
  value = var.compartment_name
}

output "compartment_description" {
  description = "Compartment description"
  value = var.compartment_description
}
