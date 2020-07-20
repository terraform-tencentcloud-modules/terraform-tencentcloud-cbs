resource "tencentcloud_cbs_storage" "default" {
  count             = local.count_storage
  availability_zone = var.availability_zone
  storage_name      = var.storage_name != null ? var.storage_name : null
  storage_size      = var.storage_size > 0 ? var.storage_size : 0
  storage_type      = var.storage_type
  tags              = var.tags
  snapshot_id       = var.snapshot_id
  charge_type       = var.charge_type
  encrypt           = var.encrypt
}

resource "tencentcloud_cbs_snapshot_policy" "default" {
  count                = local.count_policy
  retention_days       = var.retention_days
  repeat_hours         = var.repeat_hours
  repeat_weekdays      = var.repeat_weekdays
  snapshot_policy_name = var.snapshot_policy_name
}

resource "tencentcloud_cbs_snapshot_policy_attachment" "default" {
  count              = (local.count_policy > 0 && local.count_storage > 0) ? 1 : 0
  snapshot_policy_id = tencentcloud_cbs_snapshot_policy.default[count.index].id
  storage_id         = tencentcloud_cbs_storage.default[count.index].id
}

resource "tencentcloud_cbs_storage_attachment" "default" {
  count       = (local.count_instance > 0 && local.count_storage > 0) ? 1 : 0
  instance_id = var.instance_id
  storage_id  = tencentcloud_cbs_storage.default[count.index].id
}

resource "tencentcloud_cbs_snapshot" "default" {
  count         = var.snapshot_name != null ? 1 : 0
  snapshot_name = var.snapshot_name
  storage_id    = var.storage_snapshot_id
}

locals {
  count_policy   = var.snapshot_policy_name != null ? 1 : 0
  count_storage  = var.storage_name != null ? 1 : 0
  count_instance = var.instance_id != null ? 1 : 0
}

