workflow "Run SC analysis" {
  on = "push"
  resolves = ["Simple Build"]
}

action "Simple Build" {
  uses = "docker://gradle:latest"
  args = "test"
}
