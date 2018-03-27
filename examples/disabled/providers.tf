provider "github" {
  alias        = "devops"
  organization = "devops-workflow"
  token        = "${var.devops_token}"
}
