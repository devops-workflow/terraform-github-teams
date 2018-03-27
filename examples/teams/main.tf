module "teams" {
  source = "../../"

  providers = {
    github = "github.devops"
  }

  teams = [
    {
      name = "team1"
    },
    {
      name        = "team-d"
      description = "Team with description"
    },
    {
      name        = "team-closed"
      description = "Closed team"
      privacy     = "closed"
    },
    {
      name        = "team-secret"
      description = "Secret team"
      privacy     = "secret"
    },
  ]
}
