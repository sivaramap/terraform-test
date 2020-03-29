variable "priv_cred" {
  type        = string
  description = "credential file"
  default     = "terraform-cred.json"
}

variable "project" {
  type        = string
  description = "project-name"
  default     = "mytraining-gcptech"
}

variable "region" {
  type        = string
  description = "The GCP region."
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "The GCP zone"
  default     = "us-central1-a"
}

variable "base-instance" {
  type        = string
  description = "The GCP Instance"
  default     = "terraform-instance"
}

variable "machine_cat" {
  description = "The GCE Machine Type"
  default     = "f1-micro"
}

variable "image_name" {
  description = "the GCE disk-type"
  default     = "debian-cloud/debian-9"
}

variable "start_script" {
  type        = string
  description = "The GCE startup script"
  default     = "startup.sh"
}