# terraform-datadog-teams

# https://www.terraform.io/docs/providers/datadog/r/user.html

module "enabled" {
  source  = "devops-workflow/boolean/local"
  version = "0.1.2"
  value   = "${var.enabled}"
}

data "null_data_source" "this" {
  count = "${module.enabled.value ? length(var.teams) : 0}"

  inputs {
    name = "${lookup(var.teams[count.index], "name")}"
  }
}

resource "github_team" "this" {
  count       = "${module.enabled.value ? length(var.teams) : 0}"
  name        = "${lookup(var.teams[count.index], "name")}"
  description = "${lookup(var.teams[count.index], "description", "Managed by Terraform")}"
  privacy     = "${lookup(var.teams[count.index], "privacy", "secret")}"

  # secret or closed
}

# output: id

