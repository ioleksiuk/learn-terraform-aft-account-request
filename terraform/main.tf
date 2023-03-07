module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ilia041+test@gmail.com"
    AccountName               = "test"
    ManagedOrganizationalUnit = "Security"
    SSOUserEmail              = "ilia041+sandbox@gmail.com"
    SSOUserFirstName          = "Hello"
    SSOUserLastName           = "There"
  }

  account_tags = {
    "test" = "test"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "test"
}
