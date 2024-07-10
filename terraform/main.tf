module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "huytd.test3.aws@outlook.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Sandbox (ou-ffdz-zsxcbzkw)"
    SSOUserEmail              = "huytd.aft.aws@outlook.com"
    SSOUserFirstName          = "Sandbox1"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT update1"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn update1"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform update1"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}

# module "sandbox2" {
#   source = "./modules/aft-account-request"

#   control_tower_parameters = {
#     AccountEmail              = "huytd.test4.aws@outlook.com"
#     AccountName               = "sandbox2-aft"
#     ManagedOrganizationalUnit = "Infrastructure (ou-ffdz-lqp0nwb1)"
#     SSOUserEmail              = "huytd.aft.aws@outlook.com"
#     SSOUserFirstName          = "Sandbox2"
#     SSOUserLastName           = "AFT"
#   }

#   account_tags = {
#     "Learn Tutorial" = "AFT"
#   }

#   change_management_parameters = {
#     change_requested_by = "HashiCorp Learn"
#     change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
#   }

#   custom_fields = {
#     group = "non-prod"
#   }

#   account_customizations_name = "sandbox"
# }