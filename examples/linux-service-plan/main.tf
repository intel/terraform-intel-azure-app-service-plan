module "linux-service-plan-east-v3" {
  source              = "../../"
  service_plan_name   = "intel-linux-service-plan-110"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

module "linux-service-plan-west-v3" {
  source                 = "../../"
  service_plan_name      = "intel-linux-service-plan-110"
  resource_group_name    = "terraform-testing-west-rg"
  zone_balancing_enabled = false
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}


#V2

module "linux-service-plan-east-v2" {
  source              = "../../"
  service_plan_name   = "intel-linux-service-plan-110-v2"
  resource_group_name = "terraform-testing-rg"
  sku_name            = "P2v2"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}

module "linux-service-plan-west-v2" {
  source                 = "../../"
  service_plan_name      = "intel-linux-service-plan-110-v2"
  resource_group_name    = "terraform-testing-west-rg"
  sku_name               = "P2v2"
  zone_balancing_enabled = false
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}