git-pr-release
==============

https://github.com/motemen/git-pr-release

# Environment Variables

| Name | Required | Default | Example | Description |
|---|---|---|---|---|
| `GITHUB_USER` | yes | | `nownabe` | Username of GitHub |
| `GITHUB_REPO` | yes | | `nownabe/myrepo` | Repository of GitHub |
| `GITHUB_TOKEN` | yes | | `xxxxxxxx` | Personal Token of GitHub |
| `GIT_PR_RELEASE_BRANCH_PRODUCTION ` | no | `master` | `master` | Branch name for production |
| `GIT_PR_RELEASE_BRANCH_STAGING` | no | `staging` | `develop` | Branch name for staging |
| `GIT_PR_RELEASE_TEMPLATE` | no | | `../template.erb` | Template file path for pull request description |
| `GIT_PR_RELEASE_LABELS` | no | | `deploy,bot` | List of labels for pull request |
