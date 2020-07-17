# CBS Module Example

This module can create TencentCloud CBS, CBS snapshot, CBS snapshot policy, CBS snapshot policy attachment and CBS storage attachment.

## Usage

To run this example, you need first replace the configuration like `storage_name`, `availability_zone` etc, and then execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note, this example may create resources which cost money. Run `terraform destroy` if you don't need these resources.

## Outputs

 | Name | Description |
 |------|-------------|
 | storage_id | ID of CLB. |
 | snapshot_id | ID of snapshot. |
 | snapshot_policy_id | ID of the snapshot policy. |
 
 