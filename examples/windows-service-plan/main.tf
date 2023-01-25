
module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-windows-service-plan-111"
  resource_group_name = "terraform-testing-rg"
  os_type             = "Windows"
  sku_name            = "P1v3"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}
