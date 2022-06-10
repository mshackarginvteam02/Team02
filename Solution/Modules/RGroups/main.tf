resource "azurerm_resource_group" "rg" {
  name = var.tupla_rgname_lc
  location = var.location
}