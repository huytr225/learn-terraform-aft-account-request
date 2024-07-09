module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "huytd.test3.aws@outlook.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Infrastructure (ou-ffdz-lqp0nwb1)"
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