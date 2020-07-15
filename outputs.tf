output "storage_id" {
  description = "ID of CLB."
  value       = tencentcloud_cbs_storage.default.*.id
}

output "snapshot_id" {
  description = "ID of the snapshot."
  value       = tencentcloud_cbs_snapshot.default.*.id
}

output "snapshot_policy_id" {
  description = "ID of the snapshot policy."
  value       = tencentcloud_cbs_snapshot_policy.default.*.id
}

