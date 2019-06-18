workflow "Test" {
  on = "push"
  resolves = ["actions/docker/cli@master"]
}

action "Lint Dockerfile" {
  uses = "docker://replicated/dockerfilelint"
  args = ["Dockerfile"]
}

action "actions/docker/cli@master" {
  uses = "actions/docker/cli@master"
  needs = ["Lint Dockerfile"]
  args = "build -t action-api-test-base"
}
