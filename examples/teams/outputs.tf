output "ids" {
  description = "List of team IDs"
  value       = "${module.teams.ids}"
}

output "names" {
  description = "List of team names"
  value       = "${module.teams.names}"
}
