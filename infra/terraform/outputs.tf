output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "app_service_hostname" {
  value = azurerm_linux_web_app.app["web"].default_hostname
}

output "eshop_web_service" {
  value = azurerm_linux_web_app.app["web"].name
}

output "eshop_api" {
  value = azurerm_linux_web_app.app["api"].name
}