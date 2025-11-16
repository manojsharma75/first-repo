resource "google_container_cluster" "primary" {
  # Naming
  name     = var.cluster_name
  location = var.region
  
  # Cluster size/version
  initial_node_count = var.initial_node_count
  min_master_version = var.gke_version
  
  # Release Channel is highly recommended for automatic updates
  release_channel {
    channel = "REGULAR"
  }
  
  # Networking: Use default VPC/Subnet for simplicity in this example
  network    = "default"
  subnetwork = "default"

  # Optional: Enable VPA for efficient resource management
  vertical_pod_autoscaling {
    enabled = true
  }

  # Node Pool Definition (Default node pool)
  node_config {
    machine_type = var.node_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }

  # Prevent accidental deletion (optional but recommended)
  deletion_protection = false

  timeouts {
    create = "30m"
    update = "30m"
    delete = "30m"
  }
}
