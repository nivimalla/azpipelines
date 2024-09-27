####### Start of Mandatory variables ###############
variable "compartment_id" {
  type        = string
  description = "Compartment OCID where this identity domain needs to be created."
  default     = null
}

variable "description" {
  type        = string
  description = "Description about the identity domain"
  default     = null
}

variable "display_name" {
  type        = string
  description = "Display Name of the identity domain"
  default     = null
}

variable "home_region" {
  type        = string
  description = "Region of the identity domain in which it has to be created."
  default     = null
}

variable "license_type" {
  type        = string
  description = "Licence type of the identity domain"
  default     = null
}
####### Start of Mandatory variables ###############

####### start of optional variables ################

variable "admin_email" {
  type        = string
  description = "Identity Domain admin email"
  default     = null
}

variable "admin_first_name" {
  type        = string
  description = "Identity Domain admin first name"
  default     = null
}

variable "admin_last_name" {
  type        = string
  description = "Identity Domain admin last name"
  default     = null
}

variable "admin_user_name" {
  type        = string
  description = "Identity Domain admin username" #This will be normally the admin email Id itself
  default     = null
}

variable "is_notification_bypassed" {
  type        = bool
  description = "Identity Domain admin username" #This will be normally the admin email Id itself
  default     = false
}


####### end of optional variables ################
