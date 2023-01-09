output "service_plan_name" {
  description = "The name of the App Service Plan"
  value       = module.intel-optimized-service-plan.name
}

output "id" {
  description = "The ID of the App Service Plan"
  value       = module.intel-optimized-service-plan.id
}

output "sku_name" {
  description = "The SKU of the App Service Plan"
  value       = module.intel-optimized-service-plan.sku_name
}

output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = module.intel-optimized-service-plan.resource_group_name
}

output "os_type" {
  description = "The operating system type of the App Service Plan: 'Windows', 'Linux' or 'WindowsContainer'"
  value       = module.intel-optimized-service-plan.os_type
}

output "tags" {
  description = "Map of tags"
  value       = module.intel-optimized-service-plan.tags
}

output "app_service_environment_id" {
  description = "If ASE is used, the ID of the App Service Environment"
  value       = module.intel-optimized-service-plan.app_service_environment_id
}

output "maximum_elastic_worker_count" {
  description = "If Azure Function Elastic plan is used. The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan"
  value       = module.intel-optimized-service-plan.maximum_elastic_worker_count
}

output "worker_count" {
  description = "The number of workers associated with this App Service Plan"
  value       = module.intel-optimized-service-plan.worker_count
}

output "per_site_scaling_enabled" {
  description = "If per site scaling is enabled"
  value       = module.intel-optimized-service-plan.per_site_scaling_enabled
}

output "zone_balancing_enabled" {
  description = "If zone balancing is enabled"
  value       = module.intel-optimized-service-plan.zone_balancing_enabled
}
