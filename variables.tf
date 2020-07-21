variable "storage_type" {
  description = "Type of CBS medium."
  type        = string
  default     = null
}

variable "storage_size" {
  description = "Volume of CBS, and unit is GB."
  type        = number
  default     = 0
}
variable "storage_name" {
  description = "Name of CBS."
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "The available zone that the CBS instance locates at."
  type        = string
  default     = null
}

variable "snapshot_id" {
  description = "ID of the snapshot. If specified, created the CBS by this snapshot."
  type        = string
  default     = null
}

variable "charge_type" {
  description = "The charge type of CBS instance."
  type        = string
  default     = null
}

variable "encrypt" {
  description = "Indicates whether CBS is encrypted."
  type        = bool
  default     = false
}

variable "repeat_hours" {
  description = "Trigger times of periodic snapshot."
  type        = list(number)
  default     = []
}

variable "repeat_weekdays" {
  description = "Periodic snapshot is enabled, the available values are [0, 1, 2, 3, 4, 5, 6]."
  type        = list(number)
  default     = []
}

variable "retention_days" {
  description = "Retention days of the snapshot."
  type        = number
  default     = 7
}

variable "snapshot_policy_name" {
  description = "Name of snapshot policy."
  type        = string
  default     = null
}

variable "instance_id" {
  description = "ID of the CVM instance."
  type        = string
  default     = null
}

variable "tags" {
  description = "The available tags within this CBS."
  type        = map(string)
  default     = {}
}

variable "snapshot_name" {
  description = "Name of the snapshot."
  type        = string
  default     = null
}

variable "storage_snapshot_id" {
  description = "ID of the the CBS which this snapshot created from."
  type        = string
  default     = null
}