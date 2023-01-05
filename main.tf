
data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "service_plan" {
  sku_name                     = var.sku_name
  name                         = var.service_plan_name
  resource_group_name          = data.azurerm_resource_group.rg.name
  location                     = data.azurerm_resource_group.rg.location
  os_type                      = var.os_type
  tags                         = var.tags
  app_service_environment_id   = var.app_service_environment_id
  maximum_elastic_worker_count = var.maximum_elastic_worker_count
  worker_count                 = var.worker_count
  per_site_scaling_enabled     = var.per_site_scaling_enabled
  zone_balancing_enabled       = var.zone_balancing_enabled

}