########################
####     General    ####
########################

output "name" {
  description = "The name of the App Service Plan"
  value       = azurerm_service_plan.service_plan.name
}

output "id" {
  description = "The ID of the App Service Plan"
  value       = azurerm_service_plan.service_plan.id
}

output "kind" {
  description = "The kind of the App Service Plan. True if os_type is Linux, otherwise false."
  value       = azurerm_service_plan.service_plan.kind
}

output "reserved" {
  description = "Is the App Service Plan reserved"
  value       = azurerm_service_plan.service_plan.reserved
}

output "sku_name" {
  description = "The SKU of the App Service Plan"
  value       = azurerm_service_plan.service_plan.sku_name
}

output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = azurerm_service_plan.service_plan.resource_group_name
}

output "location" {
  description = "The location of the App Service Plan"
  value       = azurerm_service_plan.service_plan.location
}

output "os_type" {
  description = "The operating system type of the App Service Plan: 'Windows', 'Linux' or 'WindowsContainer'"
  value       = azurerm_service_plan.service_plan.os_type
}

output "tags" {
  description = "Map of tags"
  value       = azurerm_service_plan.service_plan.tags
}

output "app_service_environment_id" {
  description = "If ASE is used, enter the ID of the App Service Environment"
  value       = azurerm_service_plan.service_plan.app_service_environment_id
}

output "maximum_elastic_worker_count" {
  description = "If Azure Function Elastic plan is used. The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan"
  value       = azurerm_service_plan.service_plan.maximum_elastic_worker_count
}

output "worker_count" {
  description = "The number of workers associated with this App Service Plan"
  value       = azurerm_service_plan.service_plan.worker_count
}

output "per_site_scaling_enabled" {
  description = "Should the App Service Plan scale per application or per worker"
  value       = azurerm_service_plan.service_plan.per_site_scaling_enabled
}

output "zone_balancing_enabled" {
  description = "Should the App Service Plan scale per application or per worker"
  value       = azurerm_service_plan.service_plan.zone_balancing_enabled
}
