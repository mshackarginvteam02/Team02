output "name" {
    description = "Resource Group Name"
    value = azurerm_resource_group.rg.name
}

output "location" {
    description = "RG Location"
    value = azurerm_resource_group.rg.location
  
}

output "id" {
    description = "RG Location"
    value = azurerm_resource_group.rg.id
  
}