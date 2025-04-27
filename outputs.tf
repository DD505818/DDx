output "gke_cluster_name" {
  description = "Name of the created GKE cluster"
  value       = module.quantum_cluster.name
}

output "gke_cluster_endpoint" {
  description = "Endpoint URL of the created GKE cluster"
  value       = module.quantum_cluster.endpoint
}

output "quantum_fury_ip" {
  description = "Reserved static IP address for Load Balancer"
  value       = google_compute_address.quantum_ip.address
}