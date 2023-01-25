
module "intel-optimized-service-plan" {
  source              = "intel/azure-app-service-plan/intel"
  service_plan_name   = "intel-linux-service-plan-110"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}
