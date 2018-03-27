output "ids" {
  description = "List of team IDs"
  value       = "${compact(concat(github_team.this.*.id, list("")))}"
}

output "names" {
  description = "List of team names"
  value       = "${compact(concat(data.null_data_source.this.*.outputs.name, list("")))}"
}
