variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
}

variable "instance_name" {
  description = "Name for Compute Engine instance"
  type        = string
}

variable "redis_instance_name" {
  description = "Name for Redis instance"
  type        = string
}