output "storage_id" {
  description = "ID of CLB."
  value       = module.cbs.storage_id
}

output "snapshot_id" {
  description = "ID of the snapshot."
  value       = module.cbs.snapshot_id
}

output "snapshot_policy_id" {
  description = "ID of the snapshot policy."
  value       = module.cbs.snapshot_policy_id
}