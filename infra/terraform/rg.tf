resource "azurerm_resource_group" "rg" {
  name     = "mrb-demo-${var.environment}"
  location = "eastus2"
}
