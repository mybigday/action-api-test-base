workflow "Test" {
  on = "push"
  resolves = ["Build"]
}

action "Lint Dockerfile" {
  uses = "docker://replicated/dockerfilelint"
  args = "Dockerfile"
}

action "Build" {
  uses = "actions/docker/cli@master"
  needs = ["Lint Dockerfile"]
  args = "build -t action-api-test-base ."
}
