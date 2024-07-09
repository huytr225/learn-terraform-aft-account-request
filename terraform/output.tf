output "sandbox2_account_id" {
    value = module.sandbox2.aws_organizations_organization_account.account
}

output "sandbox1_account_id" {
    value = module.sandbox.aws_organizations_organization_account.account
}
