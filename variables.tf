###################################### Start of Tenancy Authentication variables #################################
variable "tenancy_ocid" {
  type        = string
  description = "Customer Tanancy OCID"
  default     = "ocid1.tenancy.oc1..aaaaaaaaevibd6ytzpugzqhzmk5sajdxm6ilorh335724maaqibg4bmtztaq"
}

variable "compartment_id" {
  type        = string
  description = "compartment ocid"
  default     = "ocid1.compartment.oc1..aaaaaaaahwuksuenazr4vnx2kh2vepw3ealmcjkghp45iz33x4fw6s3ce2xq"
}

variable "user_ocid" {
  type        = string
  description = "user ocid used to authentication with OCI tenancy"
  default     = "ocid1.user.oc1..aaaaaaaav4sfi5fqk2a7icsfrtd6czn7tnirtehjs5jko5c6t4yp3b5tquoq"
}
variable "fingerprint" {
  type        = string
  description = "fingerprint of the user to authenticate with OCI tenancy"
  default     = "14:75:47:64:9a:e5:77:3b:33:20:36:43:69:c7:77:ca"
}
variable "private_key_path" {
  type        = string
  description = "path to the private key"
  default     = "/home/opc/.oci/oci_api_key.pem"
}

variable "region" {
  type        = string
  description = "Customer Tenant home region"
  default     = "us-ashburn-1"
}

variable "domain_id" {
  type        = string
  description = "domain where the instance should be created"
  default     = "ocid1.domain.oc1..aaaaaaaa3zied77nxsdlckk5qrs2ec4ts6akesff3lhu2bd3cb6t5ipwjzoa"
}
###################################### End Of Tenancy Authentication variables #################################

