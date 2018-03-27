module "disabled" {
  source  = "../../"
  enabled = false
  teams   = []

  providers = {
    github = "github.devops"
  }
}
