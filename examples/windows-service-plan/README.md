<p align="center">
  <img src="https://github.com/OTCShare2/terraform-intel-azure-app-service-plan/blob/main/images/logo-classicblue-800px.png?raw=true" alt="Intel Logo" width="250"/>
</p>

# Intel Cloud Optimization Modules for Terraform

© Copyright 2022, Intel Corporation

## Usage

**See examples folder for complete examples.**

main.tf

```hcl

module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-windows-service-plan-110"
  resource_group_name = "terraform-testing-rg"
  os_type             = "Windows"
  sku_name            = "P1v3"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

```

Run Terraform

```hcl

terraform init  
terraform plan
terraform apply 

```

## Considerations

Service plan example only, you still need a web app to be created using this plan
