provider "tencentcloud" {
  region = "ap-guangzhou"
}

/*
//cbs bind cvm instance.
module "cbs" {
  source            = "../../"
  availability_zone = "ap-guangzhou-3"
  storage_name      = "cbs_test"
  storage_type      = "CLOUD_PREMIUM"
  storage_size      = 10

  instance_id = "ins-mdkwsuli"
}

//cbs attachment snapshot policy.
module "cbs" {
  source            = "../../"
  availability_zone = "ap-guangzhou-3"
  storage_name      = "cbs_test"
  storage_type      = "CLOUD_PREMIUM"
  storage_size      = 10

  snapshot_policy_name = "cbs_snapshot_policy_test"
  repeat_hours         = [1, 2]
  repeat_weekdays      = [2]
  retention_days       = 10
}

//cbs snapshot.
module "cbs" {
  source            = "../../"
  snapshot_name       = "cbs_snapshot_test"
  storage_snapshot_id = "disk-1m08i6hu"
}
*/

module "cbs" {
  source            = "../../"
  availability_zone = "ap-guangzhou-3"
  storage_name      = "cbs_test"
  storage_type      = "CLOUD_PREMIUM"
  storage_size      = 10

  snapshot_policy_name = "cbs_snapshot_policy_test"
  repeat_hours         = [1, 2]
  repeat_weekdays      = [2]
  retention_days       = 10

  instance_id = "ins-gt2gvxj4"

  snapshot_name       = "cbs_snapshot_test"
  storage_snapshot_id = "disk-cdj4m8rm"

  tags = {
    test_cbs = "test_cbs"
  }
}