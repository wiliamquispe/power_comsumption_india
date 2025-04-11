variable "credentials" {
  description = "My Credentials"
  default     = "G:/Sensitive/gcp/local-scope-455103-k3-62ab8f953681.json"

}

variable "project" {
  description = "Project"
  default     = "local-scope-455103-k3"
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "region" {
  description = "Region"
  default     = "us-central1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  default     = "project_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  default     = "local-scope-455103-k3-bucket-project"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}