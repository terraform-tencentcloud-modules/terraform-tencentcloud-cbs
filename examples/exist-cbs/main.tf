provider "tencentcloud" {
  region = "ap-guangzhou"
}

module "cbs" {
  source            = "../../"
  availability_zone = "ap-guangzhou-3"
  storage_name      = "cbs_test"
  storage_type      = "CLOUD_PREMIUM"
  storage_size      = 10
}