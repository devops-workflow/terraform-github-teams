[![CircleCI](https://circleci.com/gh/devops-workflow/terraform-github-teams.svg?style=svg)](https://circleci.com/gh/devops-workflow/terraform-github-teams)

terraform-github-teams
=======================

Terraform module for managing Github teams

```hcl
module "github-teams" {
  source  = "devops-workflow/teams/github"
  version = "0.0.1"

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
  ]
}
```
