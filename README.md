 # TencentCloud CBS Module for Terraform
 
 ## terraform-tencentcloud-cbs
 
 A terraform module used to create TencentCloud CBS, CBS snapshot, CBS snapshot policy, CBS snapshot policy attachment and CBS storage attachment.
 
 The following resources are included.
 
 * [CBS](https://www.terraform.io/docs/providers/tencentcloud/r/cbs_storage.html)
 * [CBS snapshot](https://www.terraform.io/docs/providers/tencentcloud/r/cbs_snapshot.html)
 * [CBS snapshot policy](https://www.terraform.io/docs/providers/tencentcloud/r/cbs_snapshot_policy.html)
 * [CBS snapshot policy attachment](https://www.terraform.io/docs/providers/tencentcloud/r/cbs_snapshot_policy_attachment.html)
 * [CBS storage attachment](https://www.terraform.io/docs/providers/tencentcloud/r/cbs_storage_attachment.html)
 
 ## Usage
 ```hcl
module "cbs" {
  source            = "terraform-tencentcloud-modules/cbs/tencentcloud"
  availability_zone = "ap-guangzhou-3"
  storage_name      = "cbs_test"
  storage_type      = "CLOUD_PREMIUM"
  storage_size      = 10

  snapshot_policy_name = "cbs_snapshot_policy_test"
  repeat_hours         = [1, 2]
  repeat_weekdays      = [2]
  retention_days       = 10

  instance_id = "ins-mdkwsuli"

  snapshot_name       = "cbs_snapshot_test"
  storage_snapshot_id = "disk-1m08i6hu"

  tags = {
    test_cbs = "test_cbs"
  }
}
```
 
 ## Conditional Creation
 
 This module can create TencentCloud CBS, CBS snapshot, CBS snapshot policy, CBS snapshot policy attachment and CBS storage attachment.
 
 ## Inputs
 
 | Name | Description | Type | Default | Required |
 |------|-------------|:----:|:-----:|:-----:|
 | availability_zone | The available zone that the CBS instance locates at. | string | null | no 
 | storage_name | Name of CBS. | string | null | no 
 | storage_type | Type of CBS medium. | string | null | no 
 | storage_size | Volume of CBS, and unit is GB. | number | 0 | no 
 | snapshot_id | ID of the snapshot. If specified, created the CBS by this snapshot. | string | null | no 
 | charge_type | The charge type of CBS instance. | string | null | no 
 | encrypt | Indicates whether CBS is encrypted. | bool | false | no 
 | instance_id | ID of the CVM instance. | string | null | no 
 | tags | The available tags within this CBS. | map | {} | no 
 | repeat_weekdays | Periodic snapshot is enabled, the available values are [0, 1, 2, 3, 4, 5, 6]. | list | [] | no 
 | snapshot_policy_name | Name of snapshot policy. | string | null | no 
 | repeat_hours | Trigger times of periodic snapshot. | list | [] | no 
 | retention_days | Retention days of the snapshot. | number | 7 | no 
 | snapshot_name | Name of the snapshot. | string | null | no 
 | storage_snapshot_id | ID of the the CBS which this snapshot created from. | string | null | no 
 
 
 ## Outputs
 
 | Name | Description |
 |------|-------------|
 | storage_id | ID of CLB. |
 | snapshot_id | ID of snapshot. |
 | snapshot_policy_id | ID of the snapshot policy. |
 
 
 ## Authors
 
 Created and maintained by [TencentCloud](https://github.com/terraform-providers/terraform-provider-tencentcloud)
 
 ## License
 
 Mozilla Public License Version 2.0.
 See LICENSE for full details.