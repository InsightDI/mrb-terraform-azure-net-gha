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

resource "azurerm_service_plan" "asp" {
  name                = "demo-asp"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "app" {
  for_each            = local.apps
  name                = each.value.name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.asp.id

  site_config {
    application_stack {
      dotnet_version = "6.0"
    }
  }
}
