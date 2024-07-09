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

module "sandbox2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "huytd.test5.aws@outlook.com"
    AccountName               = "sandbox-aft-2"
    ManagedOrganizationalUnit = "Labs (ou-ffdz-hw8f5zby)"
    SSOUserEmail              = "huytd.aft.aws@outlook.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox"
}
