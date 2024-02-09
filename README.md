
<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-app-service-plan/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel® Optimized Cloud Modules for Terraform

© Copyright 2024, Intel Corporation

## Azure App Service Plan Module

This module can be used to deploy an Intel optimized Azure Service Plan.

The module favors V3 Premium instances which run on faster processors.

## Usage

**See examples folder for complete examples.**

By default, you only have to pass two variables

```hcl
service_plan_name
resource_group_name      
```

main.tf

```hcl
module "linux-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-linux-service-plan-01"
  resource_group_name = "my-app-rg"
}
```

Run Terraform

```hcl

terraform init  
terraform plan
terraform apply 
```

## Considerations

This module does not deploy the App Service Web App, for that look at the Intel Windows/Linux App Service Web App modules.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.40.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | ~>3.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_service_plan.service_plan](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/service_plan) | resource |
| [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_service_environment_id"></a> [app\_service\_environment\_id](#input\_app\_service\_environment\_id) | If ASE is used, enter the ID of the App Service Environment | `string` | `null` | no |
| <a name="input_maximum_elastic_worker_count"></a> [maximum\_elastic\_worker\_count](#input\_maximum\_elastic\_worker\_count) | If Azure Function Elastic plan is used. The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan | `number` | `null` | no |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | The operating system type of the App Service Plan: 'Windows', 'Linux' or 'WindowsContainer' | `string` | `"Linux"` | no |
| <a name="input_per_site_scaling_enabled"></a> [per\_site\_scaling\_enabled](#input\_per\_site\_scaling\_enabled) | Should the App Service Plan scale per application or per worker | `bool` | `false` | no |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | The name of the Resource Group | `string` | n/a | yes |
| <a name="input_service_plan_name"></a> [service\_plan\_name](#input\_service\_plan\_name) | The name of the App Service Plan | `string` | n/a | yes |
| <a name="input_sku_name"></a> [sku\_name](#input\_sku\_name) | The SKU of the App Service Plan | `string` | `"P2v3"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Map of tags to apply | `map(string)` | `null` | no |
| <a name="input_worker_count"></a> [worker\_count](#input\_worker\_count) | The number of workers associated with this App Service Plan | `number` | `null` | no |
| <a name="input_zone_balancing_enabled"></a> [zone\_balancing\_enabled](#input\_zone\_balancing\_enabled) | Should the App Service Plan use zone balancing | `bool` | `true` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_service_environment_id"></a> [app\_service\_environment\_id](#output\_app\_service\_environment\_id) | If ASE is used, enter the ID of the App Service Environment |
| <a name="output_id"></a> [id](#output\_id) | The ID of the App Service Plan |
| <a name="output_kind"></a> [kind](#output\_kind) | The kind of the App Service Plan. True if os\_type is Linux, otherwise false. |
| <a name="output_location"></a> [location](#output\_location) | The location of the App Service Plan |
| <a name="output_maximum_elastic_worker_count"></a> [maximum\_elastic\_worker\_count](#output\_maximum\_elastic\_worker\_count) | If Azure Function Elastic plan is used. The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan |
| <a name="output_name"></a> [name](#output\_name) | The name of the App Service Plan |
| <a name="output_os_type"></a> [os\_type](#output\_os\_type) | The operating system type of the App Service Plan: 'Windows', 'Linux' or 'WindowsContainer' |
| <a name="output_per_site_scaling_enabled"></a> [per\_site\_scaling\_enabled](#output\_per\_site\_scaling\_enabled) | Should the App Service Plan scale per application or per worker |
| <a name="output_reserved"></a> [reserved](#output\_reserved) | Is the App Service Plan reserved |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | The name of the Resource Group |
| <a name="output_sku_name"></a> [sku\_name](#output\_sku\_name) | The SKU of the App Service Plan |
| <a name="output_tags"></a> [tags](#output\_tags) | Map of tags |
| <a name="output_worker_count"></a> [worker\_count](#output\_worker\_count) | The number of workers associated with this App Service Plan |
| <a name="output_zone_balancing_enabled"></a> [zone\_balancing\_enabled](#output\_zone\_balancing\_enabled) | Should the App Service Plan scale per application or per worker |
<!-- END_TF_DOCS -->