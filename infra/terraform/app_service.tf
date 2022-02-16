resource "random_id" "id" {
  byte_length = 3
}

locals {
  apps = {
    web = {
      name = "demo-web-${random_id.id.hex}"
    }
    api = {
      name = "demo-api-${random_id.id.hex}"
    }
  }
}

resource "azurerm_app_service_plan" "asp" {
  name                = "demo-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_app_service" "app" {
  for_each            = local.apps
  name                = each.value.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  app_service_plan_id = azurerm_app_service_plan.asp.id

  site_config {
    dotnet_framework_version = "v6.0"
  }
}
