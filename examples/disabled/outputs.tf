output "ids" {
  description = "List of team IDs"
  value       = "${module.disabled.ids}"
}

output "names" {
  description = "List of team names"
  value       = "${module.disabled.names}"
}
