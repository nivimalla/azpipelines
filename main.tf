####################################################################################
#              Compartment Creation
####################################################################################
	
module "az_comp" {
  source = "./modules/IAM/compartment"
  #tenancy_ocid           = var.tenancy_ocid
  compartment_id          = var.compartment_id # define the parent compartment. Creation at tenancy root if omitted
  compartment_name        = "az_comp"
  compartment_description = "Parent Compartment For PaaS Services"
  compartment_create      = true # if false, a data source with a matching name is created instead
  enable_delete           = true # if false, on `terraform destroy`, compartment is deleted from the terraform state but not from oci 
}

####################################################################################
#             Identity Domain Creation
####################################################################################


module "az_domain" {
  source         = "./modules/IAM/IdentityDomain"
  compartment_id = module.az_comp.compartment_id
  description    = "Identity domain for non prod PaaS environments" #var.domain_description
  display_name   = "az_domain"                                #var.domain_display_name
  home_region    = var.region
  license_type   = "free" #var.domain_license_type

  #Optional
  admin_email              = "niveditha.malla@pwc.com" #var.domain_admin_email
  admin_first_name         = "Niveditha"               #var.domain_admin_first_name
  admin_last_name          = "Malla"                   #var.domain_admin_last_name
  admin_user_name          = "niveditha.malla@pwc.com" #var.domain_test_user.name
  is_notification_bypassed = false
  depends_on               = [module.az_comp]
}
