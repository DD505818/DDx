terraform {
  required_version = ">= 1.0.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.10"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.7"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "quantum_cluster" {
  source     = "terraform-google-modules/kubernetes-engine/google"
  project_id = var.project_id
  name       = "quantum-fury-cluster"
  region     = var.region

  node_pools = {
    preemptible_nodes = {
      machine_type = "n1-standard-4"
      preemptible  = true
      min_count    = 3
      max_count    = 12
      disk_size_gb = 100
    }
  }
}

resource "google_compute_address" "quantum_ip" {
  name   = "quantum-fury-ip"
  region = var.region
}