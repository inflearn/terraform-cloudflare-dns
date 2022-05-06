variable "create" {
  description = "Whether to create Route53 zone"
  type        = bool
  default     = true
}

variable "zone_id" {
  description = "ID of DNS zone"
  type        = string
  default     = null
}

variable "records" {
  description = "Map of Route53 record parameters"
  type        = any
  default     = {}
}
