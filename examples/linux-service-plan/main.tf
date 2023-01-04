module "linux-service-plan" {
  source              = "../../"
  service_plan_name   = "intel-linux-service-plan-110"
  resource_group_name = "terraform-testing-rg"
  tags = {
    "Owner"    = "Intel.Cloud.Modules@intel.com"
    "Duration" = "4"
  }
}