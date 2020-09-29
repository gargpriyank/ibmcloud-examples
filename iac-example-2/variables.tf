variable "project_name" {}
variable "environment" {}

variable "resource_group" {
  type    = string
}

variable "region" {
  type    = string
}

variable "datacenter" {
  type    = string
}

variable "additional_zone_names" {
  type    = list(string)
}

variable "machine_type" {
  type    = string
}

variable "hardware" {
  type    = string
}

variable "workers_count" {
  type    = number
}

variable "public_vlan_id" {
  type    = string
}

variable "private_vlan_id" {
  type    = string
}

variable "enable_public_service_endpoint" {
  type    = string
}

variable "enable_private_service_endpoint" {
  type    = string
}

variable "additional_zone_public_service_endpoint" {
  type    = list(string)
}

variable "additional_zone_private_service_endpoint" {
  type    = list(string)
}

variable "k8s_version" {
  type    = string
}

variable "enable_db_service" {
  type    = bool
}

variable "db_name" {
  type    = string
}

variable "db_plan" {
  type    = string
}

variable "db_service_name" {
  type    = string
}

variable "db_admin_password" {
  type    = string
}

variable "db_memory_allocation" {
  type    = number
}

variable "db_disk_allocation" {
  type    = number
}

variable "db_whitelist_ip_address" {
  type    = string
}

variable "es_kafka_service_name" {
  type    = string
}

variable "enable_event_streams_service" {
  type    = bool
}

variable "es_kafka_plan" {
  type    = string
}

variable "es_kafka_topic_name" {
  type    = string
}

variable "es_kafka_topic_partitions" {
  type    = number
}

variable "es_kafka_topic_cleanup_policy" {
  type    = string
}

variable "es_kafka_topic_retention_ms" {
  type    = number
}

variable "es_kafka_topic_retention_bytes" {
  type    = number
}

variable "es_kafka_topic_segment_bytes" {
  type    = number
}

locals {
  max_size = length(var.additional_zone_names)
}