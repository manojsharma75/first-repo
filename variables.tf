variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region for the GKE cluster"
  type        = string
  default     = "us-central1"
}

variable "cluster_name" {
  description = "Name for the GKE cluster"
  type        = string
  default     = "github-action-cluster"
}

variable "gke_version" {
  description = "The GKE master version"
  type        = string
  default     = "1.30"
}

variable "initial_node_count" {
  description = "The initial number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "node_machine_type" {
  description = "The machine type for the nodes"
  type        = string
  default     = "e2-small"
}
