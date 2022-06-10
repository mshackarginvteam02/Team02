//Backend Example.
terraform {
  required_providers {
    azurerm = {
      version = "~> 2.19"
    }
  }
  backend "azurerm" {
    storage_account_name = "hack"
    resource_group_name = "Hack"
    container_name = "tfstate"
    key = "prodterraform.tfstate"
    access_key = "snVh+5xM4ZJ1Qmh6hrRlZo3t9oTJSPvIE0h8PHfUqwSGttZaW6rOJv4ghbA59WTHWzCoM671ncmD+AStw7ghQw=="
  }
}


//Provider example
provider "azurerm" {
  features {}
}


module "RGroups" {
  source = "./Modules/RGroups"
  tupla_rgname_lc = var.tupla_rgname_lc
  location = var.location
}

//Log Analytics
module "LogAnalitycs" {
  source                = "./Modules/LogAnalitycs"
  name                  = "mshack"
  depends_on            = [module.RGroups] // Dependencia Explicita.
  resource_group_name   = module.RGroups.name
  location              = module.RGroups.location
  sku                   = "PERGB2018"
  retention_in_days     = "30"
 // tags = merge(local.common_tags, local.extra_tags)
  solutions = [
        {
            solution_name = "AzureActivity",
            publisher = "Microsoft",
            product = "OMSGallery/AzureActivity",
        },
    ]
}