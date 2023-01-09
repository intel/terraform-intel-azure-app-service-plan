
<p align="center">
  <img src="https://github.com/intel/terraform-intel-azure-app-service-plan/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Azure App Service Plan Module

This module can be used to deploy an Intel optimized Azure Service Plan.

The module favors V3 Premium instances wich run on faster processors.

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
