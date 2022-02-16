output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "app_service_hostname" {
  value = azurerm_app_service.app["web"].default_site_hostname
}

output "eshop_web_service" {
  value = azurerm_app_service.app["web"].name
}

output "eshop_api" {
  value = azurerm_app_service.app["api"].name
}