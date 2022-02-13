output "resource_group_id" {
    value = azurerm_resource_group.rg.id
}

output "app_service_hostname" {
  value = azurerm_app_service.app.default_site_hostname
}