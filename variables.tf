########################
####     Intel      ####
########################

# Premium v3 Service Plans features faster processors, Hyper-V virtualization and support for VNet connectivity
# Recommendations for App Services: P1v3, P2v3 or P3v3, 
# Recommendations Functions Elastic plans: EP1, EP2, or EP3
variable "sku_name" {
  description = "The SKU of the App Service Plan"
  default     = "P2v3"
}

########################
####    Required    ####
########################


variable "service_plan_name" {
  description = "The name of the App Service Plan"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group"
  type        = string
}


########################
####     Other      ####
########################

variable "os_type" {
  description = "The operating system type of the App Service Plan: 'Windows', 'Linux' or 'WindowsContainer'"
  type        = string
  default     = "Linux"
}

variable "tags" {
  description = "Map of tags to apply."
  type        = map(string)
  default     = null
}

variable "app_service_environment_id" {
  description = "If ASE is used, enter the ID of the App Service Environment"
  type        = string
  default     = null
}

variable "maximum_elastic_worker_count" {
  description = "If Azure Function Elastic plan is used. The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan"
  type        = number
  default     = null
}

variable "worker_count" {
  description = "The number of workers associated with this App Service Plan"
  type        = number
  default     = null
}

variable "per_site_scaling_enabled" {
  description = "Should the App Service Plan scale per application or per worker"
  type        = bool
  default     = false
}

variable "zone_balancing_enabled" {
  description = "Should the App Service Plan use zone balancing"
  type        = bool
  default     = true
}