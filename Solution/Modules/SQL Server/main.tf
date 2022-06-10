data "terraform_remote_state" "foo" {
  backend = "azurerm"
  config = {
    storage_account_name = "Hack"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "snVh+5xM4ZJ1Qmh6hrRlZo3t9oTJSPvIE0h8PHfUqwSGttZaW6rOJv4ghbA59WTHWzCoM671ncmD+AStw7ghQw=="
  }
}
