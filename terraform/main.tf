module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "huytd.test3.aws@outlook.com"
    AccountName               = "sandbox-aft"
    ManagedOrganizationalUnit = "Old (ou-ffdz-dcvv5s4f)"
    SSOUserEmail              = "huytd.aft.aws@outlook.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT update"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn update"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform update"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
